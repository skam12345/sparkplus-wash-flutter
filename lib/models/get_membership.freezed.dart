// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMembership _$GetMembershipFromJson(Map<String, dynamic> json) {
  return _GetMembership.fromJson(json);
}

/// @nodoc
mixin _$GetMembership {
  String? get prod_code => throw _privateConstructorUsedError;
  String? get prod_name => throw _privateConstructorUsedError;
  String? get is_brush => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMembershipCopyWith<GetMembership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMembershipCopyWith<$Res> {
  factory $GetMembershipCopyWith(
          GetMembership value, $Res Function(GetMembership) then) =
      _$GetMembershipCopyWithImpl<$Res, GetMembership>;
  @useResult
  $Res call({String? prod_code, String? prod_name, String? is_brush});
}

/// @nodoc
class _$GetMembershipCopyWithImpl<$Res, $Val extends GetMembership>
    implements $GetMembershipCopyWith<$Res> {
  _$GetMembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod_code = freezed,
    Object? prod_name = freezed,
    Object? is_brush = freezed,
  }) {
    return _then(_value.copyWith(
      prod_code: freezed == prod_code
          ? _value.prod_code
          : prod_code // ignore: cast_nullable_to_non_nullable
              as String?,
      prod_name: freezed == prod_name
          ? _value.prod_name
          : prod_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_brush: freezed == is_brush
          ? _value.is_brush
          : is_brush // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMembershipCopyWith<$Res>
    implements $GetMembershipCopyWith<$Res> {
  factory _$$_GetMembershipCopyWith(
          _$_GetMembership value, $Res Function(_$_GetMembership) then) =
      __$$_GetMembershipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? prod_code, String? prod_name, String? is_brush});
}

/// @nodoc
class __$$_GetMembershipCopyWithImpl<$Res>
    extends _$GetMembershipCopyWithImpl<$Res, _$_GetMembership>
    implements _$$_GetMembershipCopyWith<$Res> {
  __$$_GetMembershipCopyWithImpl(
      _$_GetMembership _value, $Res Function(_$_GetMembership) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod_code = freezed,
    Object? prod_name = freezed,
    Object? is_brush = freezed,
  }) {
    return _then(_$_GetMembership(
      prod_code: freezed == prod_code
          ? _value.prod_code
          : prod_code // ignore: cast_nullable_to_non_nullable
              as String?,
      prod_name: freezed == prod_name
          ? _value.prod_name
          : prod_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_brush: freezed == is_brush
          ? _value.is_brush
          : is_brush // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMembership implements _GetMembership {
  _$_GetMembership({this.prod_code, this.prod_name, this.is_brush});

  factory _$_GetMembership.fromJson(Map<String, dynamic> json) =>
      _$$_GetMembershipFromJson(json);

  @override
  final String? prod_code;
  @override
  final String? prod_name;
  @override
  final String? is_brush;

  @override
  String toString() {
    return 'GetMembership(prod_code: $prod_code, prod_name: $prod_name, is_brush: $is_brush)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMembership &&
            (identical(other.prod_code, prod_code) ||
                other.prod_code == prod_code) &&
            (identical(other.prod_name, prod_name) ||
                other.prod_name == prod_name) &&
            (identical(other.is_brush, is_brush) ||
                other.is_brush == is_brush));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prod_code, prod_name, is_brush);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMembershipCopyWith<_$_GetMembership> get copyWith =>
      __$$_GetMembershipCopyWithImpl<_$_GetMembership>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMembershipToJson(
      this,
    );
  }
}

abstract class _GetMembership implements GetMembership {
  factory _GetMembership(
      {final String? prod_code,
      final String? prod_name,
      final String? is_brush}) = _$_GetMembership;

  factory _GetMembership.fromJson(Map<String, dynamic> json) =
      _$_GetMembership.fromJson;

  @override
  String? get prod_code;
  @override
  String? get prod_name;
  @override
  String? get is_brush;
  @override
  @JsonKey(ignore: true)
  _$$_GetMembershipCopyWith<_$_GetMembership> get copyWith =>
      throw _privateConstructorUsedError;
}
