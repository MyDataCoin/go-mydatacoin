package keeper

import (
	"mdc/x/did/types"
)

var _ types.QueryServer = Keeper{}
