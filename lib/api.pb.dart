///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum Pull_PullOneof {
  ping, 
  resultAsk, 
  notSet
}

class Pull extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Pull_PullOneof> _Pull_PullOneofByTag = {
    1 : Pull_PullOneof.ping,
    11 : Pull_PullOneof.resultAsk,
    0 : Pull_PullOneof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pull', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..oo(0, [1, 11])
    ..aOM<Ping>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ping', subBuilder: Ping.create)
    ..aOM<ResultAsk>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultAsk', protoName: 'resultAsk', subBuilder: ResultAsk.create)
    ..hasRequiredFields = false
  ;

  Pull._() : super();
  factory Pull({
    Ping? ping,
    ResultAsk? resultAsk,
  }) {
    final _result = create();
    if (ping != null) {
      _result.ping = ping;
    }
    if (resultAsk != null) {
      _result.resultAsk = resultAsk;
    }
    return _result;
  }
  factory Pull.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pull.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pull clone() => Pull()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pull copyWith(void Function(Pull) updates) => super.copyWith((message) => updates(message as Pull)) as Pull; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pull create() => Pull._();
  Pull createEmptyInstance() => create();
  static $pb.PbList<Pull> createRepeated() => $pb.PbList<Pull>();
  @$core.pragma('dart2js:noInline')
  static Pull getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pull>(create);
  static Pull? _defaultInstance;

  Pull_PullOneof whichPullOneof() => _Pull_PullOneofByTag[$_whichOneof(0)]!;
  void clearPullOneof() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Ping get ping => $_getN(0);
  @$pb.TagNumber(1)
  set ping(Ping v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPing() => $_has(0);
  @$pb.TagNumber(1)
  void clearPing() => clearField(1);
  @$pb.TagNumber(1)
  Ping ensurePing() => $_ensure(0);

  @$pb.TagNumber(11)
  ResultAsk get resultAsk => $_getN(1);
  @$pb.TagNumber(11)
  set resultAsk(ResultAsk v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasResultAsk() => $_has(1);
  @$pb.TagNumber(11)
  void clearResultAsk() => clearField(11);
  @$pb.TagNumber(11)
  ResultAsk ensureResultAsk() => $_ensure(1);
}

class Ping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ping', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Ping._() : super();
  factory Ping() => create();
  factory Ping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ping clone() => Ping()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ping copyWith(void Function(Ping) updates) => super.copyWith((message) => updates(message as Ping)) as Ping; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ping create() => Ping._();
  Ping createEmptyInstance() => create();
  static $pb.PbList<Ping> createRepeated() => $pb.PbList<Ping>();
  @$core.pragma('dart2js:noInline')
  static Ping getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ping>(create);
  static Ping? _defaultInstance;
}

class ResultAsk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultAsk', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'word')
    ..hasRequiredFields = false
  ;

  ResultAsk._() : super();
  factory ResultAsk({
    $core.String? word,
  }) {
    final _result = create();
    if (word != null) {
      _result.word = word;
    }
    return _result;
  }
  factory ResultAsk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultAsk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultAsk clone() => ResultAsk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultAsk copyWith(void Function(ResultAsk) updates) => super.copyWith((message) => updates(message as ResultAsk)) as ResultAsk; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultAsk create() => ResultAsk._();
  ResultAsk createEmptyInstance() => create();
  static $pb.PbList<ResultAsk> createRepeated() => $pb.PbList<ResultAsk>();
  @$core.pragma('dart2js:noInline')
  static ResultAsk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultAsk>(create);
  static ResultAsk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => clearField(1);
}

enum Push_PushOneof {
  pong, 
  suggestions, 
  resultOk, 
  notSet
}

class Push extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Push_PushOneof> _Push_PushOneofByTag = {
    1 : Push_PushOneof.pong,
    10 : Push_PushOneof.suggestions,
    11 : Push_PushOneof.resultOk,
    0 : Push_PushOneof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Push', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..oo(0, [1, 10, 11])
    ..aOM<Pong>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pong', subBuilder: Pong.create)
    ..aOM<Suggestions>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'suggestions', subBuilder: Suggestions.create)
    ..aOM<ResultOk>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultOk', protoName: 'resultOk', subBuilder: ResultOk.create)
    ..hasRequiredFields = false
  ;

  Push._() : super();
  factory Push({
    Pong? pong,
    Suggestions? suggestions,
    ResultOk? resultOk,
  }) {
    final _result = create();
    if (pong != null) {
      _result.pong = pong;
    }
    if (suggestions != null) {
      _result.suggestions = suggestions;
    }
    if (resultOk != null) {
      _result.resultOk = resultOk;
    }
    return _result;
  }
  factory Push.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Push.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Push clone() => Push()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Push copyWith(void Function(Push) updates) => super.copyWith((message) => updates(message as Push)) as Push; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Push create() => Push._();
  Push createEmptyInstance() => create();
  static $pb.PbList<Push> createRepeated() => $pb.PbList<Push>();
  @$core.pragma('dart2js:noInline')
  static Push getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Push>(create);
  static Push? _defaultInstance;

  Push_PushOneof whichPushOneof() => _Push_PushOneofByTag[$_whichOneof(0)]!;
  void clearPushOneof() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Pong get pong => $_getN(0);
  @$pb.TagNumber(1)
  set pong(Pong v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPong() => $_has(0);
  @$pb.TagNumber(1)
  void clearPong() => clearField(1);
  @$pb.TagNumber(1)
  Pong ensurePong() => $_ensure(0);

  @$pb.TagNumber(10)
  Suggestions get suggestions => $_getN(1);
  @$pb.TagNumber(10)
  set suggestions(Suggestions v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSuggestions() => $_has(1);
  @$pb.TagNumber(10)
  void clearSuggestions() => clearField(10);
  @$pb.TagNumber(10)
  Suggestions ensureSuggestions() => $_ensure(1);

  @$pb.TagNumber(11)
  ResultOk get resultOk => $_getN(2);
  @$pb.TagNumber(11)
  set resultOk(ResultOk v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasResultOk() => $_has(2);
  @$pb.TagNumber(11)
  void clearResultOk() => clearField(11);
  @$pb.TagNumber(11)
  ResultOk ensureResultOk() => $_ensure(2);
}

class Pong extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pong', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Pong._() : super();
  factory Pong() => create();
  factory Pong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pong clone() => Pong()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pong copyWith(void Function(Pong) updates) => super.copyWith((message) => updates(message as Pong)) as Pong; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pong create() => Pong._();
  Pong createEmptyInstance() => create();
  static $pb.PbList<Pong> createRepeated() => $pb.PbList<Pong>();
  @$core.pragma('dart2js:noInline')
  static Pong getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pong>(create);
  static Pong? _defaultInstance;
}

class Suggestions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Suggestions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xs')
    ..hasRequiredFields = false
  ;

  Suggestions._() : super();
  factory Suggestions({
    $core.Iterable<$core.String>? xs,
  }) {
    final _result = create();
    if (xs != null) {
      _result.xs.addAll(xs);
    }
    return _result;
  }
  factory Suggestions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Suggestions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Suggestions clone() => Suggestions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Suggestions copyWith(void Function(Suggestions) updates) => super.copyWith((message) => updates(message as Suggestions)) as Suggestions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Suggestions create() => Suggestions._();
  Suggestions createEmptyInstance() => create();
  static $pb.PbList<Suggestions> createRepeated() => $pb.PbList<Suggestions>();
  @$core.pragma('dart2js:noInline')
  static Suggestions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Suggestions>(create);
  static Suggestions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get xs => $_getList(0);
}

class ResultOk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultOk', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 't')
    ..hasRequiredFields = false
  ;

  ResultOk._() : super();
  factory ResultOk({
    $core.String? t,
  }) {
    final _result = create();
    if (t != null) {
      _result.t = t;
    }
    return _result;
  }
  factory ResultOk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultOk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultOk clone() => ResultOk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultOk copyWith(void Function(ResultOk) updates) => super.copyWith((message) => updates(message as ResultOk)) as ResultOk; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultOk create() => ResultOk._();
  ResultOk createEmptyInstance() => create();
  static $pb.PbList<ResultOk> createRepeated() => $pb.PbList<ResultOk>();
  @$core.pragma('dart2js:noInline')
  static ResultOk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultOk>(create);
  static ResultOk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get t => $_getSZ(0);
  @$pb.TagNumber(1)
  set t($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasT() => $_has(0);
  @$pb.TagNumber(1)
  void clearT() => clearField(1);
}

