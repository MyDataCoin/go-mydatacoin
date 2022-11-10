///
//  Generated code. Do not modify.
//  source: claim/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.tendermint.spn.claim.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjoKBnBhcmFtcxgBIAEoCzIcLnRlbmRlcm1pbnQuc3BuLmNsYWltLlBhcmFtc0IEyN4fAFIGcGFyYW1z');
@$core.Deprecated('Use queryGetClaimRecordRequestDescriptor instead')
const QueryGetClaimRecordRequest$json = const {
  '1': 'QueryGetClaimRecordRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `QueryGetClaimRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetClaimRecordRequestDescriptor = $convert.base64Decode('ChpRdWVyeUdldENsYWltUmVjb3JkUmVxdWVzdBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNz');
@$core.Deprecated('Use queryGetClaimRecordResponseDescriptor instead')
const QueryGetClaimRecordResponse$json = const {
  '1': 'QueryGetClaimRecordResponse',
  '2': const [
    const {'1': 'claimRecord', '3': 1, '4': 1, '5': 11, '6': '.tendermint.spn.claim.ClaimRecord', '8': const {}, '10': 'claimRecord'},
  ],
};

/// Descriptor for `QueryGetClaimRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetClaimRecordResponseDescriptor = $convert.base64Decode('ChtRdWVyeUdldENsYWltUmVjb3JkUmVzcG9uc2USSQoLY2xhaW1SZWNvcmQYASABKAsyIS50ZW5kZXJtaW50LnNwbi5jbGFpbS5DbGFpbVJlY29yZEIEyN4fAFILY2xhaW1SZWNvcmQ=');
@$core.Deprecated('Use queryAllClaimRecordRequestDescriptor instead')
const QueryAllClaimRecordRequest$json = const {
  '1': 'QueryAllClaimRecordRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllClaimRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllClaimRecordRequestDescriptor = $convert.base64Decode('ChpRdWVyeUFsbENsYWltUmVjb3JkUmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryAllClaimRecordResponseDescriptor instead')
const QueryAllClaimRecordResponse$json = const {
  '1': 'QueryAllClaimRecordResponse',
  '2': const [
    const {'1': 'claimRecord', '3': 1, '4': 3, '5': 11, '6': '.tendermint.spn.claim.ClaimRecord', '8': const {}, '10': 'claimRecord'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllClaimRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllClaimRecordResponseDescriptor = $convert.base64Decode('ChtRdWVyeUFsbENsYWltUmVjb3JkUmVzcG9uc2USSQoLY2xhaW1SZWNvcmQYASADKAsyIS50ZW5kZXJtaW50LnNwbi5jbGFpbS5DbGFpbVJlY29yZEIEyN4fAFILY2xhaW1SZWNvcmQSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryGetMissionRequestDescriptor instead')
const QueryGetMissionRequest$json = const {
  '1': 'QueryGetMissionRequest',
  '2': const [
    const {'1': 'missionID', '3': 1, '4': 1, '5': 4, '10': 'missionID'},
  ],
};

/// Descriptor for `QueryGetMissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetMissionRequestDescriptor = $convert.base64Decode('ChZRdWVyeUdldE1pc3Npb25SZXF1ZXN0EhwKCW1pc3Npb25JRBgBIAEoBFIJbWlzc2lvbklE');
@$core.Deprecated('Use queryGetMissionResponseDescriptor instead')
const QueryGetMissionResponse$json = const {
  '1': 'QueryGetMissionResponse',
  '2': const [
    const {'1': 'Mission', '3': 1, '4': 1, '5': 11, '6': '.tendermint.spn.claim.Mission', '8': const {}, '10': 'Mission'},
  ],
};

/// Descriptor for `QueryGetMissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetMissionResponseDescriptor = $convert.base64Decode('ChdRdWVyeUdldE1pc3Npb25SZXNwb25zZRI9CgdNaXNzaW9uGAEgASgLMh0udGVuZGVybWludC5zcG4uY2xhaW0uTWlzc2lvbkIEyN4fAFIHTWlzc2lvbg==');
@$core.Deprecated('Use queryAllMissionRequestDescriptor instead')
const QueryAllMissionRequest$json = const {
  '1': 'QueryAllMissionRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllMissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllMissionRequestDescriptor = $convert.base64Decode('ChZRdWVyeUFsbE1pc3Npb25SZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryAllMissionResponseDescriptor instead')
const QueryAllMissionResponse$json = const {
  '1': 'QueryAllMissionResponse',
  '2': const [
    const {'1': 'Mission', '3': 1, '4': 3, '5': 11, '6': '.tendermint.spn.claim.Mission', '8': const {}, '10': 'Mission'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllMissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllMissionResponseDescriptor = $convert.base64Decode('ChdRdWVyeUFsbE1pc3Npb25SZXNwb25zZRI9CgdNaXNzaW9uGAEgAygLMh0udGVuZGVybWludC5zcG4uY2xhaW0uTWlzc2lvbkIEyN4fAFIHTWlzc2lvbhJHCgpwYWdpbmF0aW9uGAIgASgLMicuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVzcG9uc2VSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use queryGetAirdropSupplyRequestDescriptor instead')
const QueryGetAirdropSupplyRequest$json = const {
  '1': 'QueryGetAirdropSupplyRequest',
};

/// Descriptor for `QueryGetAirdropSupplyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetAirdropSupplyRequestDescriptor = $convert.base64Decode('ChxRdWVyeUdldEFpcmRyb3BTdXBwbHlSZXF1ZXN0');
@$core.Deprecated('Use queryGetAirdropSupplyResponseDescriptor instead')
const QueryGetAirdropSupplyResponse$json = const {
  '1': 'QueryGetAirdropSupplyResponse',
  '2': const [
    const {'1': 'AirdropSupply', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'AirdropSupply'},
  ],
};

/// Descriptor for `QueryGetAirdropSupplyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetAirdropSupplyResponseDescriptor = $convert.base64Decode('Ch1RdWVyeUdldEFpcmRyb3BTdXBwbHlSZXNwb25zZRJFCg1BaXJkcm9wU3VwcGx5GAEgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQgTI3h8AUg1BaXJkcm9wU3VwcGx5');
