///
//  Generated code. Do not modify.
//  source: claim/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../cosmos/base/v1beta1/coin.pb.dart' as $1;
import 'claim_record.pb.dart' as $2;
import 'mission.pb.dart' as $3;
import 'params.pb.dart' as $4;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOM<$1.Coin>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airdropSupply', protoName: 'airdropSupply', subBuilder: $1.Coin.create)
    ..pc<$2.ClaimRecord>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'claimRecords', $pb.PbFieldType.PM, protoName: 'claimRecords', subBuilder: $2.ClaimRecord.create)
    ..pc<$3.Mission>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'missions', $pb.PbFieldType.PM, subBuilder: $3.Mission.create)
    ..aOM<$4.Params>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $4.Params.create)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $1.Coin? airdropSupply,
    $core.Iterable<$2.ClaimRecord>? claimRecords,
    $core.Iterable<$3.Mission>? missions,
    $4.Params? params,
  }) {
    final _result = create();
    if (airdropSupply != null) {
      _result.airdropSupply = airdropSupply;
    }
    if (claimRecords != null) {
      _result.claimRecords.addAll(claimRecords);
    }
    if (missions != null) {
      _result.missions.addAll(missions);
    }
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.List<$2.ClaimRecord> get claimRecords => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$3.Mission> get missions => $_getList(2);

  @$pb.TagNumber(4)
  $4.Params get params => $_getN(3);
  @$pb.TagNumber(4)
  set params($4.Params v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasParams() => $_has(3);
  @$pb.TagNumber(4)
  void clearParams() => clearField(4);
  @$pb.TagNumber(4)
  $4.Params ensureParams() => $_ensure(3);
}

