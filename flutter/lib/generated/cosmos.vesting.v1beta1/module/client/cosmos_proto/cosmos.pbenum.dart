///
//  Generated code. Do not modify.
//  source: cosmos_proto/cosmos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ScalarType extends $pb.ProtobufEnum {
  static const ScalarType SCALAR_TYPE_UNSPECIFIED = ScalarType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCALAR_TYPE_UNSPECIFIED');
  static const ScalarType SCALAR_TYPE_STRING = ScalarType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCALAR_TYPE_STRING');
  static const ScalarType SCALAR_TYPE_BYTES = ScalarType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCALAR_TYPE_BYTES');

  static const $core.List<ScalarType> values = <ScalarType> [
    SCALAR_TYPE_UNSPECIFIED,
    SCALAR_TYPE_STRING,
    SCALAR_TYPE_BYTES,
  ];

  static final $core.Map<$core.int, ScalarType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ScalarType? valueOf($core.int value) => _byValue[value];

  const ScalarType._($core.int v, $core.String n) : super(v, n);
}

