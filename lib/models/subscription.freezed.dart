// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
class _$SubscriptionTearOff {
  const _$SubscriptionTearOff();

  _Subscription call(
      {required int id,
      @JsonKey(name: 'provider_id') required int providerId,
      @JsonKey(name: 'is_owner') bool? isOwner,
      @JsonKey(name: 'start_date') required DateTime startDate,
      @JsonKey(ignore: true) SubscriptionProvider? provider,
      @JsonKey(name: 'user_id') required String subscriberId}) {
    return _Subscription(
      id: id,
      providerId: providerId,
      isOwner: isOwner,
      startDate: startDate,
      provider: provider,
      subscriberId: subscriberId,
    );
  }

  Subscription fromJson(Map<String, Object?> json) {
    return Subscription.fromJson(json);
  }
}

/// @nodoc
const $Subscription = _$SubscriptionTearOff();

/// @nodoc
mixin _$Subscription {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  int get providerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_owner')
  bool? get isOwner => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  SubscriptionProvider? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get subscriberId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'provider_id') int providerId,
      @JsonKey(name: 'is_owner') bool? isOwner,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(ignore: true) SubscriptionProvider? provider,
      @JsonKey(name: 'user_id') String subscriberId});

  $SubscriptionProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  final Subscription _value;
  // ignore: unused_field
  final $Res Function(Subscription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? providerId = freezed,
    Object? isOwner = freezed,
    Object? startDate = freezed,
    Object? provider = freezed,
    Object? subscriberId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as int,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SubscriptionProvider?,
      subscriberId: subscriberId == freezed
          ? _value.subscriberId
          : subscriberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SubscriptionProviderCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $SubscriptionProviderCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value));
    });
  }
}

/// @nodoc
abstract class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) then) =
      __$SubscriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'provider_id') int providerId,
      @JsonKey(name: 'is_owner') bool? isOwner,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(ignore: true) SubscriptionProvider? provider,
      @JsonKey(name: 'user_id') String subscriberId});

  @override
  $SubscriptionProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res> extends _$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(
      _Subscription _value, $Res Function(_Subscription) _then)
      : super(_value, (v) => _then(v as _Subscription));

  @override
  _Subscription get _value => super._value as _Subscription;

  @override
  $Res call({
    Object? id = freezed,
    Object? providerId = freezed,
    Object? isOwner = freezed,
    Object? startDate = freezed,
    Object? provider = freezed,
    Object? subscriberId = freezed,
  }) {
    return _then(_Subscription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as int,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SubscriptionProvider?,
      subscriberId: subscriberId == freezed
          ? _value.subscriberId
          : subscriberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subscription implements _Subscription {
  const _$_Subscription(
      {required this.id,
      @JsonKey(name: 'provider_id') required this.providerId,
      @JsonKey(name: 'is_owner') this.isOwner,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(ignore: true) this.provider,
      @JsonKey(name: 'user_id') required this.subscriberId});

  factory _$_Subscription.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'provider_id')
  final int providerId;
  @override
  @JsonKey(name: 'is_owner')
  final bool? isOwner;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(ignore: true)
  final SubscriptionProvider? provider;
  @override
  @JsonKey(name: 'user_id')
  final String subscriberId;

  @override
  String toString() {
    return 'Subscription(id: $id, providerId: $providerId, isOwner: $isOwner, startDate: $startDate, provider: $provider, subscriberId: $subscriberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subscription &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality()
                .equals(other.subscriberId, subscriberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(isOwner),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(subscriberId));

  @JsonKey(ignore: true)
  @override
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionToJson(this);
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
          {required int id,
          @JsonKey(name: 'provider_id') required int providerId,
          @JsonKey(name: 'is_owner') bool? isOwner,
          @JsonKey(name: 'start_date') required DateTime startDate,
          @JsonKey(ignore: true) SubscriptionProvider? provider,
          @JsonKey(name: 'user_id') required String subscriberId}) =
      _$_Subscription;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$_Subscription.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'provider_id')
  int get providerId;
  @override
  @JsonKey(name: 'is_owner')
  bool? get isOwner;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(ignore: true)
  SubscriptionProvider? get provider;
  @override
  @JsonKey(name: 'user_id')
  String get subscriberId;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}
