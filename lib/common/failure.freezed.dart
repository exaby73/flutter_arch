// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _NetworkError networkError() {
    return const _NetworkError();
  }

  _ServerError serverError() {
    return const _ServerError();
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _Unauthorized unauthorized() {
    return const _Unauthorized();
  }

  _Unknown unknown([String? message]) {
    return _Unknown(
      message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() notFound,
    required TResult Function() unauthorized,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$NetworkErrorCopyWith<$Res> {
  factory _$NetworkErrorCopyWith(
          _NetworkError value, $Res Function(_NetworkError) then) =
      __$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NetworkErrorCopyWith<$Res> {
  __$NetworkErrorCopyWithImpl(
      _NetworkError _value, $Res Function(_NetworkError) _then)
      : super(_value, (v) => _then(v as _NetworkError));

  @override
  _NetworkError get _value => super._value as _NetworkError;
}

/// @nodoc

class _$_NetworkError extends _NetworkError {
  const _$_NetworkError() : super._();

  @override
  String toString() {
    return 'Failure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() notFound,
    required TResult Function() unauthorized,
    required TResult Function(String? message) unknown,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError extends Failure {
  const factory _NetworkError() = _$_NetworkError;
  const _NetworkError._() : super._();
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError extends _ServerError {
  const _$_ServerError() : super._();

  @override
  String toString() {
    return 'Failure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() notFound,
    required TResult Function() unauthorized,
    required TResult Function(String? message) unknown,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends Failure {
  const factory _ServerError() = _$_ServerError;
  const _ServerError._() : super._();
}

/// @nodoc
abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotFoundCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

/// @nodoc

class _$_NotFound extends _NotFound {
  const _$_NotFound() : super._();

  @override
  String toString() {
    return 'Failure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() notFound,
    required TResult Function() unauthorized,
    required TResult Function(String? message) unknown,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound extends Failure {
  const factory _NotFound() = _$_NotFound;
  const _NotFound._() : super._();
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

/// @nodoc

class _$_Unauthorized extends _Unauthorized {
  const _$_Unauthorized() : super._();

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() notFound,
    required TResult Function() unauthorized,
    required TResult Function(String? message) unknown,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends Failure {
  const factory _Unauthorized() = _$_Unauthorized;
  const _Unauthorized._() : super._();
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Unknown(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Unknown extends _Unknown {
  const _$_Unknown([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnknownCopyWith<_Unknown> get copyWith =>
      __$UnknownCopyWithImpl<_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() notFound,
    required TResult Function() unauthorized,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? notFound,
    TResult Function()? unauthorized,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends Failure {
  const factory _Unknown([String? message]) = _$_Unknown;
  const _Unknown._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$UnknownCopyWith<_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
