// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'second_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecondScreenState {
  Response1? get response1 => throw _privateConstructorUsedError;
  Response2? get response2 => throw _privateConstructorUsedError;
  Response3? get response3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondScreenStateCopyWith<SecondScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondScreenStateCopyWith<$Res> {
  factory $SecondScreenStateCopyWith(
          SecondScreenState value, $Res Function(SecondScreenState) then) =
      _$SecondScreenStateCopyWithImpl<$Res>;
  $Res call({Response1? response1, Response2? response2, Response3? response3});
}

/// @nodoc
class _$SecondScreenStateCopyWithImpl<$Res>
    implements $SecondScreenStateCopyWith<$Res> {
  _$SecondScreenStateCopyWithImpl(this._value, this._then);

  final SecondScreenState _value;
  // ignore: unused_field
  final $Res Function(SecondScreenState) _then;

  @override
  $Res call({
    Object? response1 = freezed,
    Object? response2 = freezed,
    Object? response3 = freezed,
  }) {
    return _then(_value.copyWith(
      response1: response1 == freezed
          ? _value.response1
          : response1 // ignore: cast_nullable_to_non_nullable
              as Response1?,
      response2: response2 == freezed
          ? _value.response2
          : response2 // ignore: cast_nullable_to_non_nullable
              as Response2?,
      response3: response3 == freezed
          ? _value.response3
          : response3 // ignore: cast_nullable_to_non_nullable
              as Response3?,
    ));
  }
}

/// @nodoc
abstract class _$$_SecondScreenStateCopyWith<$Res>
    implements $SecondScreenStateCopyWith<$Res> {
  factory _$$_SecondScreenStateCopyWith(_$_SecondScreenState value,
          $Res Function(_$_SecondScreenState) then) =
      __$$_SecondScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({Response1? response1, Response2? response2, Response3? response3});
}

/// @nodoc
class __$$_SecondScreenStateCopyWithImpl<$Res>
    extends _$SecondScreenStateCopyWithImpl<$Res>
    implements _$$_SecondScreenStateCopyWith<$Res> {
  __$$_SecondScreenStateCopyWithImpl(
      _$_SecondScreenState _value, $Res Function(_$_SecondScreenState) _then)
      : super(_value, (v) => _then(v as _$_SecondScreenState));

  @override
  _$_SecondScreenState get _value => super._value as _$_SecondScreenState;

  @override
  $Res call({
    Object? response1 = freezed,
    Object? response2 = freezed,
    Object? response3 = freezed,
  }) {
    return _then(_$_SecondScreenState(
      response1: response1 == freezed
          ? _value.response1
          : response1 // ignore: cast_nullable_to_non_nullable
              as Response1?,
      response2: response2 == freezed
          ? _value.response2
          : response2 // ignore: cast_nullable_to_non_nullable
              as Response2?,
      response3: response3 == freezed
          ? _value.response3
          : response3 // ignore: cast_nullable_to_non_nullable
              as Response3?,
    ));
  }
}

/// @nodoc

class _$_SecondScreenState implements _SecondScreenState {
  _$_SecondScreenState({this.response1, this.response2, this.response3});

  @override
  final Response1? response1;
  @override
  final Response2? response2;
  @override
  final Response3? response3;

  @override
  String toString() {
    return 'SecondScreenState(response1: $response1, response2: $response2, response3: $response3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecondScreenState &&
            const DeepCollectionEquality().equals(other.response1, response1) &&
            const DeepCollectionEquality().equals(other.response2, response2) &&
            const DeepCollectionEquality().equals(other.response3, response3));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(response1),
      const DeepCollectionEquality().hash(response2),
      const DeepCollectionEquality().hash(response3));

  @JsonKey(ignore: true)
  @override
  _$$_SecondScreenStateCopyWith<_$_SecondScreenState> get copyWith =>
      __$$_SecondScreenStateCopyWithImpl<_$_SecondScreenState>(
          this, _$identity);
}

abstract class _SecondScreenState implements SecondScreenState {
  factory _SecondScreenState(
      {final Response1? response1,
      final Response2? response2,
      final Response3? response3}) = _$_SecondScreenState;

  @override
  Response1? get response1 => throw _privateConstructorUsedError;
  @override
  Response2? get response2 => throw _privateConstructorUsedError;
  @override
  Response3? get response3 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SecondScreenStateCopyWith<_$_SecondScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
