///
//  Generated code. Do not modify.
//  source: claim/mission.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Mission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Mission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.spn.claim'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'missionID', $pb.PbFieldType.OU6, protoName: 'missionID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight')
    ..hasRequiredFields = false
  ;

  Mission._() : super();
  factory Mission({
    $fixnum.Int64? missionID,
    $core.String? description,
    $core.String? weight,
  }) {
    final _result = create();
    if (missionID != null) {
      _result.missionID = missionID;
    }
    if (description != null) {
      _result.description = description;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory Mission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mission clone() => Mission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mission copyWith(void Function(Mission) updates) => super.copyWith((message) => updates(message as Mission)) as Mission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Mission create() => Mission._();
  Mission createEmptyInstance() => create();
  static $pb.PbList<Mission> createRepeated() => $pb.PbList<Mission>();
  @$core.pragma('dart2js:noInline')
  static Mission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mission>(create);
  static Mission? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get missionID => $_getI64(0);
  @$pb.TagNumber(1)
  set missionID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get weight => $_getSZ(2);
  @$pb.TagNumber(3)
  set weight($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeight() => clearField(3);
}

