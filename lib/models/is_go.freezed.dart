// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_go.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IsGo _$IsGoFromJson(Map<String, dynamic> json) {
  return _IsGo.fromJson(json);
}

/// @nodoc
mixin _$IsGo {
  String? get is_go => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsGoCopyWith<IsGo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsGoCopyWith<$Res> {
  factory $IsGoCopyWith(IsGo value, $Res Function(IsGo) then) =
      _$IsGoCopyWithImpl<$Res, IsGo>;
  @useResult
  $Res call({String? is_go});
}

/// @nodoc
class _$IsGoCopyWithImpl<$Res, $Val extends IsGo>
    implements $IsGoCopyWith<$Res> {
  _$IsGoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_go = freezed,
  }) {
    return _then(_value.copyWith(
      is_go: freezed == is_go
          ? _value.is_go
          : is_go // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsGoCopyWith<$Res> implements $IsGoCopyWith<$Res> {
  factory _$$_IsGoCopyWith(_$_IsGo value, $Res Function(_$_IsGo) then) =
      __$$_IsGoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? is_go});
}

/// @nodoc
class __$$_IsGoCopyWithImpl<$Res> extends _$IsGoCopyWithImpl<$Res, _$_IsGo>
    implements _$$_IsGoCopyWith<$Res> {
  __$$_IsGoCopyWithImpl(_$_IsGo _value, $Res Function(_$_IsGo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_go = freezed,
  }) {
    return _then(_$_IsGo(
      is_go: freezed == is_go
          ? _value.is_go
          : is_go // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IsGo implements _IsGo {
  const _$_IsGo({this.is_go});

  factory _$_IsGo.fromJson(Map<String, dynamic> json) => _$$_IsGoFromJson(json);

  @override
  final String? is_go;

  @override
  String toString() {
    return 'IsGo(is_go: $is_go)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsGo &&
            (identical(other.is_go, is_go) || other.is_go == is_go));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, is_go);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsGoCopyWith<_$_IsGo> get copyWith =>
      __$$_IsGoCopyWithImpl<_$_IsGo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IsGoToJson(
      this,
    );
  }
}

abstract class _IsGo implements IsGo {
  const factory _IsGo({final String? is_go}) = _$_IsGo;

  factory _IsGo.fromJson(Map<String, dynamic> json) = _$_IsGo.fromJson;

  @override
  String? get is_go;
  @override
  @JsonKey(ignore: true)
  _$$_IsGoCopyWith<_$_IsGo> get copyWith => throw _privateConstructorUsedError;
}
