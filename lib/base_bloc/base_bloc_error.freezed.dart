// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_bloc_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseBlocError {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseBlocErrorCopyWith<BaseBlocError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseBlocErrorCopyWith<$Res> {
  factory $BaseBlocErrorCopyWith(
          BaseBlocError value, $Res Function(BaseBlocError) then) =
      _$BaseBlocErrorCopyWithImpl<$Res>;
  $Res call({String title, String message, List<dynamic> errors});
}

/// @nodoc
class _$BaseBlocErrorCopyWithImpl<$Res>
    implements $BaseBlocErrorCopyWith<$Res> {
  _$BaseBlocErrorCopyWithImpl(this._value, this._then);

  final BaseBlocError _value;
  // ignore: unused_field
  final $Res Function(BaseBlocError) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseBlocErrorCopyWith<$Res>
    implements $BaseBlocErrorCopyWith<$Res> {
  factory _$$_BaseBlocErrorCopyWith(
          _$_BaseBlocError value, $Res Function(_$_BaseBlocError) then) =
      __$$_BaseBlocErrorCopyWithImpl<$Res>;
  @override
  $Res call({String title, String message, List<dynamic> errors});
}

/// @nodoc
class __$$_BaseBlocErrorCopyWithImpl<$Res>
    extends _$BaseBlocErrorCopyWithImpl<$Res>
    implements _$$_BaseBlocErrorCopyWith<$Res> {
  __$$_BaseBlocErrorCopyWithImpl(
      _$_BaseBlocError _value, $Res Function(_$_BaseBlocError) _then)
      : super(_value, (v) => _then(v as _$_BaseBlocError));

  @override
  _$_BaseBlocError get _value => super._value as _$_BaseBlocError;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_BaseBlocError(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_BaseBlocError implements _BaseBlocError {
  _$_BaseBlocError(
      {required this.title,
      required this.message,
      required final List<dynamic> errors})
      : _errors = errors;

  @override
  final String title;
  @override
  final String message;
  final List<dynamic> _errors;
  @override
  List<dynamic> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'BaseBlocError(title: $title, message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseBlocError &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_BaseBlocErrorCopyWith<_$_BaseBlocError> get copyWith =>
      __$$_BaseBlocErrorCopyWithImpl<_$_BaseBlocError>(this, _$identity);
}

abstract class _BaseBlocError implements BaseBlocError {
  factory _BaseBlocError(
      {required final String title,
      required final String message,
      required final List<dynamic> errors}) = _$_BaseBlocError;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  List<dynamic> get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BaseBlocErrorCopyWith<_$_BaseBlocError> get copyWith =>
      throw _privateConstructorUsedError;
}
