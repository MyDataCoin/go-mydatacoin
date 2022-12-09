package app

import (
	"github.com/cosmos/cosmos-sdk/crypto/keyring"	
	tmcli "github.com/tendermint/tendermint/libs/cli"

)

const (
	// DefaultGasAdjustment is applied to gas estimates to avoid tx execution
	// failures due to state changes that might occur between the tx simulation
	// and the actual run.
	DefaultGasAdjustment = 1.0
	DefaultGasLimit      = 200000
	GasFlagAuto          = "auto"

	// DefaultKeyringBackend
	DefaultKeyringBackend = keyring.BackendOS

	// BroadcastSync defines a tx broadcasting mode where the client waits for
	// a CheckTx execution response only.
	BroadcastSync = "sync"
	// BroadcastAsync defines a tx broadcasting mode where the client returns
	// immediately.
	BroadcastAsync = "async"

	// SignModeDirect is the value of the --sign-mode flag for SIGN_MODE_DIRECT
	SignModeDirect = "direct"
	// SignModeLegacyAminoJSON is the value of the --sign-mode flag for SIGN_MODE_LEGACY_AMINO_JSON
	SignModeLegacyAminoJSON = "amino-json"
	// SignModeDirectAux is the value of the --sign-mode flag for SIGN_MODE_DIRECT_AUX
	SignModeDirectAux = "direct-aux"
	// SignModeEIP191 is the value of the --sign-mode flag for SIGN_MODE_EIP_191
	SignModeEIP191 = "eip-191"
)

const (
	FlagHome             = tmcli.HomeFlag
	FlagKeyringDir       = "keyring-dir"
	FlagUseLedger        = "ledger"
	FlagChainID          = "chain-id"
	FlagNode             = "node"
	FlagHeight           = "height"
	FlagGasAdjustment    = "gas-adjustment"
	FlagFrom             = "from"
	FlagName             = "name"
	FlagAccountNumber    = "account-number"
	FlagSequence         = "sequence"
	FlagNote             = "note"
	FlagFees             = "fees"
	FlagGas              = "gas"
	FlagGasPrices        = "gas-prices"
	FlagBroadcastMode    = "broadcast-mode"
	FlagDryRun           = "dry-run"
	FlagGenerateOnly     = "generate-only"
	FlagOffline          = "offline"
	FlagOutputDocument   = "output-document" // inspired by wget -O
	FlagSkipConfirmation = "yes"
	FlagProve            = "prove"
	FlagKeyringBackend   = "keyring-backend"
	FlagPage             = "page"
	FlagLimit            = "limit"
	FlagSignMode         = "sign-mode"
	FlagPageKey          = "page-key"
	FlagOffset           = "offset"
	FlagCountTotal       = "count-total"
	FlagTimeoutHeight    = "timeout-height"
	FlagKeyAlgorithm     = "algo"
	FlagFeePayer         = "fee-payer"
	FlagFeeGranter       = "fee-granter"
	FlagReverse          = "reverse"
	FlagTip              = "tip"
	FlagAux              = "aux"
	// FlagOutput is the flag to set the output format.
	// This differs from FlagOutputDocument that is used to set the output file.
	FlagOutput = tmcli.OutputFlag

	// Tendermint logging flags
	FlagLogLevel  = "log_level"
	FlagLogFormat = "log_format"
)
