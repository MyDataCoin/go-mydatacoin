///
//  Generated code. Do not modify.
//  source: claim/claim_record.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ClaimRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClaimRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'claimable')
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedMissions', $pb.PbFieldType.PU6, protoName: 'completedMissions')
    ..hasRequiredFields = false
  ;

  ClaimRecord._() : super();
  factory ClaimRecord({
    $core.String? address,
    $core.String? claimable,
    $core.Iterable<$fixnum.Int64>? completedMissions,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (claimable != null) {
      _result.claimable = claimable;
    }
    if (completedMissions != null) {
      _result.completedMissions.addAll(completedMissions);
    }
    return _result;
  }
  factory ClaimRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClaimRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClaimRecord clone() => ClaimRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClaimRecord copyWith(void Function(ClaimRecord) updates) => super.copyWith((message) => updates(message as ClaimRecord)) as ClaimRecord; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimRecord create() => ClaimRecord._();
  ClaimRecord createEmptyInstance() => create();
  static $pb.PbList<ClaimRecord> createRepeated() => $pb.PbList<ClaimRecord>();
  @$core.pragma('dart2js:noInline')
  static ClaimRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClaimRecord>(create);
  static ClaimRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get claimable => $_getSZ(1);
  @$pb.TagNumber(2)
  set claimable($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClaimable() => $_has(1);
  @$pb.TagNumber(2)
  void clearClaimable() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get completedMissions => $_getList(2);
}

