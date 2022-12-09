package did_test

import (
	"testing"

	"github.com/stretchr/testify/require"
	keepertest "mdc/testutil/keeper"
	"mdc/testutil/nullify"
	"mdc/x/did"
	"mdc/x/did/types"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{

		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.DidKeeper(t)
	did.InitGenesis(ctx, *k, genesisState)
	got := did.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	nullify.Fill(&genesisState)
	nullify.Fill(got)

	// this line is used by starport scaffolding # genesis/test/assert
}
