///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pullDescriptor instead')
const Pull$json = const {
  '1': 'Pull',
  '2': const [
    const {'1': 'ping', '3': 1, '4': 1, '5': 11, '6': '.api.Ping', '9': 0, '10': 'ping'},
    const {'1': 'resultAsk', '3': 11, '4': 1, '5': 11, '6': '.api.ResultAsk', '9': 0, '10': 'resultAsk'},
  ],
  '8': const [
    const {'1': 'pull_oneof'},
  ],
};

/// Descriptor for `Pull`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullDescriptor = $convert.base64Decode('CgRQdWxsEh8KBHBpbmcYASABKAsyCS5hcGkuUGluZ0gAUgRwaW5nEi4KCXJlc3VsdEFzaxgLIAEoCzIOLmFwaS5SZXN1bHRBc2tIAFIJcmVzdWx0QXNrQgwKCnB1bGxfb25lb2Y=');
@$core.Deprecated('Use pingDescriptor instead')
const Ping$json = const {
  '1': 'Ping',
};

/// Descriptor for `Ping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDescriptor = $convert.base64Decode('CgRQaW5n');
@$core.Deprecated('Use resultAskDescriptor instead')
const ResultAsk$json = const {
  '1': 'ResultAsk',
  '2': const [
    const {'1': 'word', '3': 1, '4': 1, '5': 9, '10': 'word'},
  ],
};

/// Descriptor for `ResultAsk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultAskDescriptor = $convert.base64Decode('CglSZXN1bHRBc2sSEgoEd29yZBgBIAEoCVIEd29yZA==');
@$core.Deprecated('Use pushDescriptor instead')
const Push$json = const {
  '1': 'Push',
  '2': const [
    const {'1': 'pong', '3': 1, '4': 1, '5': 11, '6': '.api.Pong', '9': 0, '10': 'pong'},
    const {'1': 'suggestions', '3': 10, '4': 1, '5': 11, '6': '.api.Suggestions', '9': 0, '10': 'suggestions'},
    const {'1': 'resultOk', '3': 11, '4': 1, '5': 11, '6': '.api.ResultOk', '9': 0, '10': 'resultOk'},
  ],
  '8': const [
    const {'1': 'push_oneof'},
  ],
};

/// Descriptor for `Push`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushDescriptor = $convert.base64Decode('CgRQdXNoEh8KBHBvbmcYASABKAsyCS5hcGkuUG9uZ0gAUgRwb25nEjQKC3N1Z2dlc3Rpb25zGAogASgLMhAuYXBpLlN1Z2dlc3Rpb25zSABSC3N1Z2dlc3Rpb25zEisKCHJlc3VsdE9rGAsgASgLMg0uYXBpLlJlc3VsdE9rSABSCHJlc3VsdE9rQgwKCnB1c2hfb25lb2Y=');
@$core.Deprecated('Use pongDescriptor instead')
const Pong$json = const {
  '1': 'Pong',
};

/// Descriptor for `Pong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pongDescriptor = $convert.base64Decode('CgRQb25n');
@$core.Deprecated('Use suggestionsDescriptor instead')
const Suggestions$json = const {
  '1': 'Suggestions',
  '2': const [
    const {'1': 'xs', '3': 1, '4': 3, '5': 9, '10': 'xs'},
  ],
};

/// Descriptor for `Suggestions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suggestionsDescriptor = $convert.base64Decode('CgtTdWdnZXN0aW9ucxIOCgJ4cxgBIAMoCVICeHM=');
@$core.Deprecated('Use resultOkDescriptor instead')
const ResultOk$json = const {
  '1': 'ResultOk',
  '2': const [
    const {'1': 't', '3': 1, '4': 1, '5': 9, '10': 't'},
  ],
};

/// Descriptor for `ResultOk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultOkDescriptor = $convert.base64Decode('CghSZXN1bHRPaxIMCgF0GAEgASgJUgF0');
