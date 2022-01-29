// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Data call({User? user, Session? session}) {
    return Data(
      user: user,
      session: session,
    );
  }

  Authenticating authenticating() {
    return const Authenticating();
  }

  UnAuthenticated unauthenticated() {
    return const UnAuthenticated();
  }

  ErrorDetails error([String? message]) {
    return ErrorDetails(
      message,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User? user, Session? session) $default, {
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(ErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({User? user, Session? session});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? user = freezed,
    Object? session = freezed,
  }) {
    return _then(Data(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data({this.user, this.session});

  @override
  final User? user;
  @override
  final Session? session;

  @override
  String toString() {
    return 'AuthState(user: $user, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User? user, Session? session) $default, {
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function(String? message) error,
  }) {
    return $default(user, session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
  }) {
    return $default?.call(user, session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(user, session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(ErrorDetails value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements AuthState {
  const factory Data({User? user, Session? session}) = _$Data;

  User? get user;
  Session? get session;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatingCopyWith<$Res> {
  factory $AuthenticatingCopyWith(
          Authenticating value, $Res Function(Authenticating) then) =
      _$AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatingCopyWith<$Res> {
  _$AuthenticatingCopyWithImpl(
      Authenticating _value, $Res Function(Authenticating) _then)
      : super(_value, (v) => _then(v as Authenticating));

  @override
  Authenticating get _value => super._value as Authenticating;
}

/// @nodoc

class _$Authenticating implements Authenticating {
  const _$Authenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User? user, Session? session) $default, {
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function(String? message) error,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(ErrorDetails value) error,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class Authenticating implements AuthState {
  const factory Authenticating() = _$Authenticating;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User? user, Session? session) $default, {
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function(String? message) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(ErrorDetails value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<$Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails value, $Res Function(ErrorDetails) then) =
      _$ErrorDetailsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(
      ErrorDetails _value, $Res Function(ErrorDetails) _then)
      : super(_value, (v) => _then(v as ErrorDetails));

  @override
  ErrorDetails get _value => super._value as ErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorDetails(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorDetails implements ErrorDetails {
  const _$ErrorDetails([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorDetails &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      _$ErrorDetailsCopyWithImpl<ErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User? user, Session? session) $default, {
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User? user, Session? session)? $default, {
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Authenticating value) authenticating,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(ErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Authenticating value)? authenticating,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails implements AuthState {
  const factory ErrorDetails([String? message]) = _$ErrorDetails;

  String? get message;
  @JsonKey(ignore: true)
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
