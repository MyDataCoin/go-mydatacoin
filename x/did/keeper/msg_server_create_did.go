package keeper

import (
	"context"
	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
	sdk "github.com/cosmos/cosmos-sdk/types"
	"mdc/x/did/types"
	"mdc/x/did/secp256k1util"
)

func (m msgServer) CreateDID(goCtx context.Context, msg *types.MsgCreateDID) (*types.MsgCreateDIDResponse, error) {
	keeper := m.Keeper
	ctx := sdk.UnwrapSDKContext(goCtx)

	cur := keeper.GetDIDDocument(ctx, msg.Did)
	if !cur.Empty() {
		if cur.Deactivated() {
			return nil, sdkerrors.Wrapf(types.ErrDIDDeactivated, "DID: %s", msg.Did)
		}
		return nil, sdkerrors.Wrapf(types.ErrDIDExists, "DID: %s", msg.Did)
	}

	seq := types.InitialSequence
	_, err := VerifyDIDOwnership(msg.Document, seq, msg.Document, msg.VerificationMethodId, msg.Signature)
	if err != nil {
		return nil, err
	}

	docWithSeq := types.NewDIDDocumentWithSeq(msg.Document, uint64(seq))
	keeper.SetDIDDocument(ctx, msg.Did, docWithSeq)
	return &types.MsgCreateDIDResponse{}, nil
}



func VerifyDIDOwnership(signData *types.DIDDocument, seq uint64, doc *types.DIDDocument, verificationMethodID string, sig []byte) (uint64, error) {
	verificationMethod, ok := doc.VerificationMethodFrom(doc.Authentications, verificationMethodID)
	if !ok {
		return 0, sdkerrors.Wrapf(types.ErrVerificationMethodIDNotFound, "VerificationMethodId: %s", verificationMethodID)
	}

	// TODO: Currently, only ES256K1 is supported to verify DID ownership.
	//       It makes sense for now, since a DID is derived from a Secp256k1 public key.
	//       But, need to support other key types (according to verificationMethod.Type).
	if verificationMethod.Type != types.ES256K_2019 && verificationMethod.Type != types.ES256K_2018 {
		return 0, sdkerrors.Wrapf(types.ErrVerificationMethodKeyTypeNotImplemented, "VerificationMethod: %v", verificationMethod.Type)
	}
	pubKeySecp256k1, err := secp256k1util.PubKeyFromBase58(verificationMethod.PublicKeyBase58)
	if err != nil {
		return 0, sdkerrors.Wrapf(types.ErrInvalidSecp256k1PublicKey, "PublicKey: %v", verificationMethod.PublicKeyBase58)
	}
	newSeq, ok := types.Verify(sig, signData, seq, pubKeySecp256k1)
	if !ok {
		return 0, types.ErrSigVerificationFailed
	}
	return newSeq, nil
}

