///
//  Generated code. Do not modify.
//  source: claim/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$params =
      $grpc.ClientMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
          '/tendermint.spn.claim.Query/Params',
          ($0.QueryParamsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryParamsResponse.fromBuffer(value));
  static final _$claimRecord = $grpc.ClientMethod<$0.QueryGetClaimRecordRequest,
          $0.QueryGetClaimRecordResponse>(
      '/tendermint.spn.claim.Query/ClaimRecord',
      ($0.QueryGetClaimRecordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryGetClaimRecordResponse.fromBuffer(value));
  static final _$claimRecordAll = $grpc.ClientMethod<
          $0.QueryAllClaimRecordRequest, $0.QueryAllClaimRecordResponse>(
      '/tendermint.spn.claim.Query/ClaimRecordAll',
      ($0.QueryAllClaimRecordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryAllClaimRecordResponse.fromBuffer(value));
  static final _$mission =
      $grpc.ClientMethod<$0.QueryGetMissionRequest, $0.QueryGetMissionResponse>(
          '/tendermint.spn.claim.Query/Mission',
          ($0.QueryGetMissionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryGetMissionResponse.fromBuffer(value));
  static final _$missionAll =
      $grpc.ClientMethod<$0.QueryAllMissionRequest, $0.QueryAllMissionResponse>(
          '/tendermint.spn.claim.Query/MissionAll',
          ($0.QueryAllMissionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryAllMissionResponse.fromBuffer(value));
  static final _$airdropSupply = $grpc.ClientMethod<
          $0.QueryGetAirdropSupplyRequest, $0.QueryGetAirdropSupplyResponse>(
      '/tendermint.spn.claim.Query/AirdropSupply',
      ($0.QueryGetAirdropSupplyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryGetAirdropSupplyResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryParamsResponse> params(
      $0.QueryParamsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetClaimRecordResponse> claimRecord(
      $0.QueryGetClaimRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$claimRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllClaimRecordResponse> claimRecordAll(
      $0.QueryAllClaimRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$claimRecordAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetMissionResponse> mission(
      $0.QueryGetMissionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mission, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllMissionResponse> missionAll(
      $0.QueryAllMissionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$missionAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetAirdropSupplyResponse> airdropSupply(
      $0.QueryGetAirdropSupplyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$airdropSupply, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'tendermint.spn.claim.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
            'Params',
            params_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryParamsRequest.fromBuffer(value),
            ($0.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGetClaimRecordRequest,
            $0.QueryGetClaimRecordResponse>(
        'ClaimRecord',
        claimRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGetClaimRecordRequest.fromBuffer(value),
        ($0.QueryGetClaimRecordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAllClaimRecordRequest,
            $0.QueryAllClaimRecordResponse>(
        'ClaimRecordAll',
        claimRecordAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAllClaimRecordRequest.fromBuffer(value),
        ($0.QueryAllClaimRecordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGetMissionRequest,
            $0.QueryGetMissionResponse>(
        'Mission',
        mission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGetMissionRequest.fromBuffer(value),
        ($0.QueryGetMissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAllMissionRequest,
            $0.QueryAllMissionResponse>(
        'MissionAll',
        missionAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAllMissionRequest.fromBuffer(value),
        ($0.QueryAllMissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGetAirdropSupplyRequest,
            $0.QueryGetAirdropSupplyResponse>(
        'AirdropSupply',
        airdropSupply_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGetAirdropSupplyRequest.fromBuffer(value),
        ($0.QueryGetAirdropSupplyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryParamsResponse> params_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$0.QueryGetClaimRecordResponse> claimRecord_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryGetClaimRecordRequest> request) async {
    return claimRecord(call, await request);
  }

  $async.Future<$0.QueryAllClaimRecordResponse> claimRecordAll_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryAllClaimRecordRequest> request) async {
    return claimRecordAll(call, await request);
  }

  $async.Future<$0.QueryGetMissionResponse> mission_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryGetMissionRequest> request) async {
    return mission(call, await request);
  }

  $async.Future<$0.QueryAllMissionResponse> missionAll_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryAllMissionRequest> request) async {
    return missionAll(call, await request);
  }

  $async.Future<$0.QueryGetAirdropSupplyResponse> airdropSupply_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryGetAirdropSupplyRequest> request) async {
    return airdropSupply(call, await request);
  }

  $async.Future<$0.QueryParamsResponse> params(
      $grpc.ServiceCall call, $0.QueryParamsRequest request);
  $async.Future<$0.QueryGetClaimRecordResponse> claimRecord(
      $grpc.ServiceCall call, $0.QueryGetClaimRecordRequest request);
  $async.Future<$0.QueryAllClaimRecordResponse> claimRecordAll(
      $grpc.ServiceCall call, $0.QueryAllClaimRecordRequest request);
  $async.Future<$0.QueryGetMissionResponse> mission(
      $grpc.ServiceCall call, $0.QueryGetMissionRequest request);
  $async.Future<$0.QueryAllMissionResponse> missionAll(
      $grpc.ServiceCall call, $0.QueryAllMissionRequest request);
  $async.Future<$0.QueryGetAirdropSupplyResponse> airdropSupply(
      $grpc.ServiceCall call, $0.QueryGetAirdropSupplyRequest request);
}
