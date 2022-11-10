///
//  Generated code. Do not modify.
//  source: claim/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $4;
import 'claim_record.pb.dart' as $2;
import '../cosmos/base/query/v1beta1/pagination.pb.dart' as $6;
import 'mission.pb.dart' as $3;
import '../cosmos/base/v1beta1/coin.pb.dart' as $1;

class QueryParamsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryParamsRequest._() : super();
  factory QueryParamsRequest() => create();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

class QueryParamsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$4.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $4.Params.create)
    ..hasRequiredFields = false
  ;

  QueryParamsResponse._() : super();
  factory QueryParamsResponse({
    $4.Params? params,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($4.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $4.Params ensureParams() => $_ensure(0);
}

class QueryGetClaimRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetClaimRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  QueryGetClaimRecordRequest._() : super();
  factory QueryGetClaimRecordRequest({
    $core.String? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory QueryGetClaimRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetClaimRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetClaimRecordRequest clone() => QueryGetClaimRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetClaimRecordRequest copyWith(void Function(QueryGetClaimRecordRequest) updates) => super.copyWith((message) => updates(message as QueryGetClaimRecordRequest)) as QueryGetClaimRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetClaimRecordRequest create() => QueryGetClaimRecordRequest._();
  QueryGetClaimRecordRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetClaimRecordRequest> createRepeated() => $pb.PbList<QueryGetClaimRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetClaimRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetClaimRecordRequest>(create);
  static QueryGetClaimRecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class QueryGetClaimRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetClaimRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$2.ClaimRecord>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'claimRecord', protoName: 'claimRecord', subBuilder: $2.ClaimRecord.create)
    ..hasRequiredFields = false
  ;

  QueryGetClaimRecordResponse._() : super();
  factory QueryGetClaimRecordResponse({
    $2.ClaimRecord? claimRecord,
  }) {
    final _result = create();
    if (claimRecord != null) {
      _result.claimRecord = claimRecord;
    }
    return _result;
  }
  factory QueryGetClaimRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetClaimRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetClaimRecordResponse clone() => QueryGetClaimRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetClaimRecordResponse copyWith(void Function(QueryGetClaimRecordResponse) updates) => super.copyWith((message) => updates(message as QueryGetClaimRecordResponse)) as QueryGetClaimRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetClaimRecordResponse create() => QueryGetClaimRecordResponse._();
  QueryGetClaimRecordResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetClaimRecordResponse> createRepeated() => $pb.PbList<QueryGetClaimRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetClaimRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetClaimRecordResponse>(create);
  static QueryGetClaimRecordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ClaimRecord get claimRecord => $_getN(0);
  @$pb.TagNumber(1)
  set claimRecord($2.ClaimRecord v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClaimRecord() => $_has(0);
  @$pb.TagNumber(1)
  void clearClaimRecord() => clearField(1);
  @$pb.TagNumber(1)
  $2.ClaimRecord ensureClaimRecord() => $_ensure(0);
}

class QueryAllClaimRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllClaimRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$6.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryAllClaimRecordRequest._() : super();
  factory QueryAllClaimRecordRequest({
    $6.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllClaimRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllClaimRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllClaimRecordRequest clone() => QueryAllClaimRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllClaimRecordRequest copyWith(void Function(QueryAllClaimRecordRequest) updates) => super.copyWith((message) => updates(message as QueryAllClaimRecordRequest)) as QueryAllClaimRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllClaimRecordRequest create() => QueryAllClaimRecordRequest._();
  QueryAllClaimRecordRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllClaimRecordRequest> createRepeated() => $pb.PbList<QueryAllClaimRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllClaimRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllClaimRecordRequest>(create);
  static QueryAllClaimRecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($6.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $6.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllClaimRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllClaimRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..pc<$2.ClaimRecord>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'claimRecord', $pb.PbFieldType.PM, protoName: 'claimRecord', subBuilder: $2.ClaimRecord.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryAllClaimRecordResponse._() : super();
  factory QueryAllClaimRecordResponse({
    $core.Iterable<$2.ClaimRecord>? claimRecord,
    $6.PageResponse? pagination,
  }) {
    final _result = create();
    if (claimRecord != null) {
      _result.claimRecord.addAll(claimRecord);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllClaimRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllClaimRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllClaimRecordResponse clone() => QueryAllClaimRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllClaimRecordResponse copyWith(void Function(QueryAllClaimRecordResponse) updates) => super.copyWith((message) => updates(message as QueryAllClaimRecordResponse)) as QueryAllClaimRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllClaimRecordResponse create() => QueryAllClaimRecordResponse._();
  QueryAllClaimRecordResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllClaimRecordResponse> createRepeated() => $pb.PbList<QueryAllClaimRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllClaimRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllClaimRecordResponse>(create);
  static QueryAllClaimRecordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.ClaimRecord> get claimRecord => $_getList(0);

  @$pb.TagNumber(2)
  $6.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetMissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetMissionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'missionID', $pb.PbFieldType.OU6, protoName: 'missionID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryGetMissionRequest._() : super();
  factory QueryGetMissionRequest({
    $fixnum.Int64? missionID,
  }) {
    final _result = create();
    if (missionID != null) {
      _result.missionID = missionID;
    }
    return _result;
  }
  factory QueryGetMissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetMissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetMissionRequest clone() => QueryGetMissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetMissionRequest copyWith(void Function(QueryGetMissionRequest) updates) => super.copyWith((message) => updates(message as QueryGetMissionRequest)) as QueryGetMissionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetMissionRequest create() => QueryGetMissionRequest._();
  QueryGetMissionRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetMissionRequest> createRepeated() => $pb.PbList<QueryGetMissionRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetMissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetMissionRequest>(create);
  static QueryGetMissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get missionID => $_getI64(0);
  @$pb.TagNumber(1)
  set missionID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionID() => clearField(1);
}

class QueryGetMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetMissionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$3.Mission>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Mission', protoName: 'Mission', subBuilder: $3.Mission.create)
    ..hasRequiredFields = false
  ;

  QueryGetMissionResponse._() : super();
  factory QueryGetMissionResponse({
    $3.Mission? mission,
  }) {
    final _result = create();
    if (mission != null) {
      _result.mission = mission;
    }
    return _result;
  }
  factory QueryGetMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetMissionResponse clone() => QueryGetMissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetMissionResponse copyWith(void Function(QueryGetMissionResponse) updates) => super.copyWith((message) => updates(message as QueryGetMissionResponse)) as QueryGetMissionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetMissionResponse create() => QueryGetMissionResponse._();
  QueryGetMissionResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetMissionResponse> createRepeated() => $pb.PbList<QueryGetMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetMissionResponse>(create);
  static QueryGetMissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Mission get mission => $_getN(0);
  @$pb.TagNumber(1)
  set mission($3.Mission v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMission() => $_has(0);
  @$pb.TagNumber(1)
  void clearMission() => clearField(1);
  @$pb.TagNumber(1)
  $3.Mission ensureMission() => $_ensure(0);
}

class QueryAllMissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllMissionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$6.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryAllMissionRequest._() : super();
  factory QueryAllMissionRequest({
    $6.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllMissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllMissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllMissionRequest clone() => QueryAllMissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllMissionRequest copyWith(void Function(QueryAllMissionRequest) updates) => super.copyWith((message) => updates(message as QueryAllMissionRequest)) as QueryAllMissionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllMissionRequest create() => QueryAllMissionRequest._();
  QueryAllMissionRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllMissionRequest> createRepeated() => $pb.PbList<QueryAllMissionRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllMissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllMissionRequest>(create);
  static QueryAllMissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($6.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $6.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllMissionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..pc<$3.Mission>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Mission', $pb.PbFieldType.PM, protoName: 'Mission', subBuilder: $3.Mission.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryAllMissionResponse._() : super();
  factory QueryAllMissionResponse({
    $core.Iterable<$3.Mission>? mission,
    $6.PageResponse? pagination,
  }) {
    final _result = create();
    if (mission != null) {
      _result.mission.addAll(mission);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllMissionResponse clone() => QueryAllMissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllMissionResponse copyWith(void Function(QueryAllMissionResponse) updates) => super.copyWith((message) => updates(message as QueryAllMissionResponse)) as QueryAllMissionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllMissionResponse create() => QueryAllMissionResponse._();
  QueryAllMissionResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllMissionResponse> createRepeated() => $pb.PbList<QueryAllMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllMissionResponse>(create);
  static QueryAllMissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.Mission> get mission => $_getList(0);

  @$pb.TagNumber(2)
  $6.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePagination() => $_ensure(1);
}

class QueryGetAirdropSupplyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetAirdropSupplyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryGetAirdropSupplyRequest._() : super();
  factory QueryGetAirdropSupplyRequest() => create();
  factory QueryGetAirdropSupplyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetAirdropSupplyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetAirdropSupplyRequest clone() => QueryGetAirdropSupplyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetAirdropSupplyRequest copyWith(void Function(QueryGetAirdropSupplyRequest) updates) => super.copyWith((message) => updates(message as QueryGetAirdropSupplyRequest)) as QueryGetAirdropSupplyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetAirdropSupplyRequest create() => QueryGetAirdropSupplyRequest._();
  QueryGetAirdropSupplyRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetAirdropSupplyRequest> createRepeated() => $pb.PbList<QueryGetAirdropSupplyRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetAirdropSupplyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetAirdropSupplyRequest>(create);
  static QueryGetAirdropSupplyRequest? _defaultInstance;
}

class QueryGetAirdropSupplyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetAirdropSupplyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$1.Coin>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AirdropSupply', protoName: 'AirdropSupply', subBuilder: $1.Coin.create)
    ..hasRequiredFields = false
  ;

  QueryGetAirdropSupplyResponse._() : super();
  factory QueryGetAirdropSupplyResponse({
    $1.Coin? airdropSupply,
  }) {
    final _result = create();
    if (airdropSupply != null) {
      _result.airdropSupply = airdropSupply;
    }
    return _result;
  }
  factory QueryGetAirdropSupplyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetAirdropSupplyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetAirdropSupplyResponse clone() => QueryGetAirdropSupplyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetAirdropSupplyResponse copyWith(void Function(QueryGetAirdropSupplyResponse) updates) => super.copyWith((message) => updates(message as QueryGetAirdropSupplyResponse)) as QueryGetAirdropSupplyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetAirdropSupplyResponse create() => QueryGetAirdropSupplyResponse._();
  QueryGetAirdropSupplyResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetAirdropSupplyResponse> createRepeated() => $pb.PbList<QueryGetAirdropSupplyResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetAirdropSupplyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetAirdropSupplyResponse>(create);
  static QueryGetAirdropSupplyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Coin get airdropSupply => $_getN(0);
  @$pb.TagNumber(1)
  set airdropSupply($1.Coin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAirdropSupply() => $_has(0);
  @$pb.TagNumber(1)
  void clearAirdropSupply() => clearField(1);
  @$pb.TagNumber(1)
  $1.Coin ensureAirdropSupply() => $_ensure(0);
}

