package app

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"

	didcrypto "mdc/x/did/client/crypto"
	"mdc/x/did/secp256k1util"
	"mdc/x/did/types"

	"github.com/cosmos/cosmos-sdk/client"
	"github.com/cosmos/cosmos-sdk/client/input"
	"github.com/cosmos/cosmos-sdk/client/tx"
	"github.com/cosmos/go-bip39"
	"github.com/spf13/cobra"
	"github.com/tendermint/tendermint/crypto/secp256k1"
	tmcli "github.com/tendermint/tendermint/libs/cli"
)

type InputData struct {
	Address string `json:"address"`
}
type OutputData struct {
	DID string `json:"did"`
}



// @Summary CreateDID
// @Tag DID
// @description create DID for address
// @ID create-did
// @Accept json
// @Produce json
// @Param input body InputData true "account adress"
// @Success 200 {Object} OutputData
// @Failure 500 {string} string
// @Failure 405 {string} string
// @Failure 400 {string} string
// @Router /createdid [post]
func createDID(ctx client.Context) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {

		if r.Method != "POST" {
			http.Error(w, "invalid method", http.StatusMethodNotAllowed)
			return
		}
		intermediateVariable, err := io.ReadAll(r.Body)
		if err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}
		var InpData InputData
		if err = json.Unmarshal(intermediateVariable, &InpData); err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}
		// // бирдеме болсо сен жактан кором
		inBuf := bufio.NewReader(ctx.Input)

		mnemonic, bip39Passphrase, err := readBIP39ParamsFrom(false, inBuf)
		if err != nil {
			http.Error(w, err.Error(), 500)
			return
		}
		privKey, err := didcrypto.GenSecp256k1PrivKey(mnemonic, bip39Passphrase)
		if err != nil {
			http.Error(w, err.Error(), 500)
			return
		}

		msg, err := newMsgCreateDID(InpData.Address, privKey)
		if err != nil {
			http.Error(w, err.Error(), 500)
			return
		}
		// _ = msg
		if err := savePrivKeyToKeyStore(msg.VerificationMethodId, privKey, inBuf); err != nil {
			http.Error(w, "failed to save in keystore", 500)
			return
		}

		record, err := ctx.Keyring.Key("alice")
		if err != nil {
			http.Error(w, err.Error(), 500)
		}
		sdkAddress := record.GetAddress()

		ctx = ctx.WithSkipConfirmation(true)
		ctx = ctx.WithFrom(record.GetName())
		ctx = ctx.WithFromAddress(sdkAddress)
		ctx = ctx.WithFromName(record.GetName())
		cmd := &cobra.Command{}
		AddTxFlagsToCmd(cmd)
		ctx = ctx.WithSkipConfirmation(true)

		// cmd.Flags().Bool(flagInteractive, false, "Interactively prompt user for BIP39 mnemonic and passphrase")

		if err := tx.GenerateOrBroadcastTxCLI(ctx, cmd.Flags(), msg); err != nil {
			http.Error(w, err.Error(), 500)
			return
		}
		OutputObject := &OutputData{DID: msg.Did}
		response, err := json.Marshal(OutputObject)
		if err != nil {
			http.Error(w, err.Error(), 500)
			return
		}
		w.Write(response)
	}
}

func AddTxFlagsToCmd(cmd *cobra.Command) {
	cmd.Flags().StringP(tmcli.OutputFlag, "o", "json", "Output format (text|json)")
	cmd.Flags().String(FlagKeyringDir, "", "The client Keyring directory; if omitted, the default 'home' directory will be used")
	cmd.Flags().String(FlagFrom, "", "Name or address of private key with which to sign")
	cmd.Flags().Uint64P(FlagAccountNumber, "a", 0, "The account number of the signing account (offline mode only)")
	cmd.Flags().Uint64P(FlagSequence, "s", 0, "The sequence number of the signing account (offline mode only)")
	cmd.Flags().String(FlagNote, "", "Note to add a description to the transaction (previously --memo)")
	cmd.Flags().String(FlagFees, "", "Fees to pay along with transaction; eg: 10uatom")
	cmd.Flags().String(FlagGasPrices, "", "Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)")
	cmd.Flags().String(FlagNode, "tcp://localhost:26657", "<host>:<port> to tendermint rpc interface for this chain")
	cmd.Flags().Bool(FlagUseLedger, false, "Use a connected Ledger device")
	cmd.Flags().Float64(FlagGasAdjustment, DefaultGasAdjustment, "adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored ")
	cmd.Flags().StringP(FlagBroadcastMode, "b", BroadcastSync, "Transaction broadcasting mode (sync|async|block)")
	cmd.Flags().Bool(FlagDryRun, false, "ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)")
	cmd.Flags().Bool(FlagGenerateOnly, false, "Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase only accessed when providing a key name)")
	cmd.Flags().Bool(FlagOffline, false, "Offline mode (does not allow any online functionality)")
	cmd.Flags().BoolP(FlagSkipConfirmation, "y", true, "Skip tx broadcasting prompt confirmation")
	cmd.Flags().String(FlagKeyringBackend, DefaultKeyringBackend, "Select keyring's backend (os|file|kwallet|pass|test|memory)")
	cmd.Flags().String(FlagSignMode, "", "Choose sign mode (direct|amino-json|direct-aux), this is an advanced feature")
	cmd.Flags().Uint64(FlagTimeoutHeight, 0, "Set a block timeout height to prevent the tx from being committed past a certain height")
	cmd.Flags().String(FlagFeePayer, "", "Fee payer pays fees for the transaction instead of deducting from the signer")
	cmd.Flags().String(FlagFeeGranter, "", "Fee granter grants fees for the transaction")
	cmd.Flags().String(FlagTip, "", "Tip is the amount that is going to be transferred to the fee payer on the target chain. This flag is only valid when used with --aux, and is ignored if the target chain didn't enable the TipDecorator")
	cmd.Flags().Bool(FlagAux, false, "Generate aux signer data instead of sending a tx")

	// --gas can accept integers and "auto"
	cmd.Flags().String(FlagGas, "", fmt.Sprintf("gas limit to set per-transaction; set to %q to calculate sufficient gas automatically. Note: %q option doesn't always report accurate results. Set a valid coin value to adjust the result. Can be used instead of %q. (default %d)",
		GasFlagAuto, GasFlagAuto, FlagFees, DefaultGasLimit))
}

const (
	flagInteractive = "interactive"
	baseDir         = "did_keystore"
)

// readBIP39ParamsFrom reads a mnemonic and a bip39 passphrase from the reader in the interactive mode.
// It returns empty strings in the non-interactive mode, so that they can be auto-generated by crypto.GenSecp256k1PrivKey.
func readBIP39ParamsFrom(interactive bool, reader *bufio.Reader) (string, string, error) {
	if !interactive {
		return "", "", nil
	}

	// mnemonic can be an empty string
	mnemonic, err := input.GetString("Enter your BIP39 mnemonic, or hit enter to generate one:", reader)
	if err != nil {
		return "", "", err
	}
	if mnemonic != "" && !bip39.IsMnemonicValid(mnemonic) {
		return "", "", fmt.Errorf("invalid mnemonic")
	}

	// passphrase can be an empty string
	passphrase, err := input.GetString("Enter your BIP39 passphrase, or hit enter:", reader)
	if err != nil {
		return "", "", err
	}
	if passphrase != "" {
		repeat, err := input.GetString("Repeat the passphrase:", reader)
		if err != nil {
			return "", "", err
		}
		if passphrase != repeat {
			return "", "", fmt.Errorf("passphrases don't match")
		}
	}

	return mnemonic, passphrase, nil

}

// newMsgCreateDID creates a MsgCreateDID by generating a DID and a DID document from the networkID and privKey.
// It generates the minimal DID document which contains only one public key information,
// so that it can be extended by MsgUpdateDID later.
func newMsgCreateDID(fromAddress string, privKey secp256k1.PrivKey) (*types.MsgCreateDID, error) {
	pubKey := secp256k1util.PubKeyBytes(secp256k1util.DerivePubKey(privKey))
	did := types.NewDID(pubKey)
	verificationMethodID := types.NewVerificationMethodID(did, "key1")
	verificationMethod := types.NewVerificationMethod(verificationMethodID, types.ES256K_2019, did, pubKey)
	verificationMethods := []*types.VerificationMethod{
		&verificationMethod,
	}
	relationship := types.NewVerificationRelationship(verificationMethods[0].Id)
	authentications := []types.VerificationRelationship{
		relationship,
	}
	doc := types.NewDIDDocument(did, types.WithVerificationMethods(verificationMethods), types.WithAuthentications(authentications))

	sig, err := types.Sign(doc, types.InitialSequence, privKey)
	if err != nil {
		return &types.MsgCreateDID{}, err
	}

	msg := types.NewMsgCreateDID(did, doc, verificationMethodID, sig, fromAddress)
	if err := msg.ValidateBasic(); err != nil {
		return &types.MsgCreateDID{}, err
	}
	return msg, nil
}

func savePrivKeyToKeyStore(verificationMethodID string, privKey secp256k1.PrivKey, reader *bufio.Reader) error {
	passwd, err := getCheckPassword(reader)
	if err != nil {
		return err
	}
	ks, err := didcrypto.NewKeyStore(keystoreBaseDir())
	if err != nil {
		return err
	}
	_, err = ks.Save(verificationMethodID, privKey[:], passwd)
	return err
}

func keystoreBaseDir() string {
	path, _ := os.Getwd()
	return filepath.Join(path, baseDir)
}

func getCheckPassword(reader *bufio.Reader) (string, error) {
	pas := "MaksaT123"
	return pas, nil
}
