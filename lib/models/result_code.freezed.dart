// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultCode _$ResultCodeFromJson(Map<String, dynamic> json) {
  return _ResultCode.fromJson(json);
}

/// @nodoc
mixin _$ResultCode {
  String? get result_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCodeCopyWith<ResultCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCodeCopyWith<$Res> {
  factory $ResultCodeCopyWith(
          ResultCode value, $Res Function(ResultCode) then) =
      _$ResultCodeCopyWithImpl<$Res, ResultCode>;
  @useResult
  $Res call({String? result_code});
}

/// @nodoc
class _$ResultCodeCopyWithImpl<$Res, $Val extends ResultCode>
    implements $ResultCodeCopyWith<$Res> {
  _$ResultCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result_code = freezed,
  }) {
    return _then(_value.copyWith(
      result_code: freezed == result_code
          ? _value.result_code
          : result_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCodeCopyWith<$Res>
    implements $ResultCodeCopyWith<$Res> {
  factory _$$_ResultCodeCopyWith(
          _$_ResultCode value, $Res Function(_$_ResultCode) then) =
      __$$_ResultCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result_code});
}

/// @nodoc
class __$$_ResultCodeCopyWithImpl<$Res>
    extends _$ResultCodeCopyWithImpl<$Res, _$_ResultCode>
    implements _$$_ResultCodeCopyWith<$Res> {
  __$$_ResultCodeCopyWithImpl(
      _$_ResultCode _value, $Res Function(_$_ResultCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result_code = freezed,
  }) {
    return _then(_$_ResultCode(
      result_code: freezed == result_code
          ? _value.result_code
          : result_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultCode implements _ResultCode {
  const _$_ResultCode({this.result_code});

  factory _$_ResultCode.fromJson(Map<String, dynamic> json) =>
      _$$_ResultCodeFromJson(json);

  @override
  final String? result_code;

  @override
  String toString() {
    return 'ResultCode(result_code: $result_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultCode &&
            (identical(other.result_code, result_code) ||
                other.result_code == result_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCodeCopyWith<_$_ResultCode> get copyWith =>
      __$$_ResultCodeCopyWithImpl<_$_ResultCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultCodeToJson(
      this,
    );
  }
}

abstract class _ResultCode implements ResultCode {
  const factory _ResultCode({final String? result_code}) = _$_ResultCode;

  factory _ResultCode.fromJson(Map<String, dynamic> json) =
      _$_ResultCode.fromJson;

  @override
  String? get result_code;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCodeCopyWith<_$_ResultCode> get copyWith =>
      throw _privateConstructorUsedError;
}
