///
//  Generated code. Do not modify.
//  source: claim/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'airdropSupply', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'airdropSupply'},
    const {'1': 'claimRecords', '3': 2, '4': 3, '5': 11, '6': '.tendermint.spn.claim.ClaimRecord', '8': const {}, '10': 'claimRecords'},
    const {'1': 'missions', '3': 3, '4': 3, '5': 11, '6': '.tendermint.spn.claim.Mission', '8': const {}, '10': 'missions'},
    const {'1': 'params', '3': 4, '4': 1, '5': 11, '6': '.tendermint.spn.claim.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSRQoNYWlyZHJvcFN1cHBseRgBIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkIEyN4fAFINYWlyZHJvcFN1cHBseRJLCgxjbGFpbVJlY29yZHMYAiADKAsyIS50ZW5kZXJtaW50LnNwbi5jbGFpbS5DbGFpbVJlY29yZEIEyN4fAFIMY2xhaW1SZWNvcmRzEj8KCG1pc3Npb25zGAMgAygLMh0udGVuZGVybWludC5zcG4uY2xhaW0uTWlzc2lvbkIEyN4fAFIIbWlzc2lvbnMSOgoGcGFyYW1zGAQgASgLMhwudGVuZGVybWludC5zcG4uY2xhaW0uUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
