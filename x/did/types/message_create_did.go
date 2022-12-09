package types

import (
	sdk "github.com/cosmos/cosmos-sdk/types"
)

const TypeMsgCreateDID = "create_did"

var _ sdk.Msg = &MsgCreateDID{}

func NewMsgCreateDID(did string, document *DIDDocument, verificationMethodId string, signature []byte, fromAddress string) *MsgCreateDID {
	return &MsgCreateDID{
		Did:                  did,
		Document:             document,
		VerificationMethodId: verificationMethodId,
		Signature:            signature,
		FromAddress:          fromAddress,
	}
}

func (msg *MsgCreateDID) Route() string {
	return RouterKey
}

func (msg *MsgCreateDID) Type() string {
	return TypeMsgCreateDID
}

func (msg *MsgCreateDID) GetSigners() []sdk.AccAddress {
	creator, err := sdk.AccAddressFromBech32(msg.FromAddress)
	if err != nil {
		panic(err)
	}
	return []sdk.AccAddress{creator}
}

func (msg *MsgCreateDID) GetSignBytes() []byte {
	bz := ModuleCdc.MustMarshalJSON(msg)
	return sdk.MustSortJSON(bz)
}

func (msg *MsgCreateDID) ValidateBasic() error {
	// _, err := sdk.AccAddressFromBech32(msg.Creator)
	// if err != nil {
	// 	return sdkerrors.Wrapf(sdkerrors.ErrInvalidAddress, "invalid creator address (%s)", err)
	// }
	return nil
}
