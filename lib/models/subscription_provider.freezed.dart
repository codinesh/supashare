// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionProvider _$SubscriptionProviderFromJson(Map<String, dynamic> json) {
  return _SubscriptionProvider.fromJson(json);
}

/// @nodoc
class _$SubscriptionProviderTearOff {
  const _$SubscriptionProviderTearOff();

  _SubscriptionProvider call(
      {required int id,
      required String name,
      @JsonKey(name: 'brand_color') required String color,
      @JsonKey(name: 'max_subscribers') required int maxSubscribers,
      required double price,
      required String? description,
      @JsonKey(name: 'logo_url') required String logo,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Frequency frequency = Frequency.month}) {
    return _SubscriptionProvider(
      id: id,
      name: name,
      color: color,
      maxSubscribers: maxSubscribers,
      price: price,
      description: description,
      logo: logo,
      createdAt: createdAt,
      frequency: frequency,
    );
  }

  SubscriptionProvider fromJson(Map<String, Object?> json) {
    return SubscriptionProvider.fromJson(json);
  }
}

/// @nodoc
const $SubscriptionProvider = _$SubscriptionProviderTearOff();

/// @nodoc
mixin _$SubscriptionProvider {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// brand color in hex
  @JsonKey(name: 'brand_color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_subscribers')
  int get maxSubscribers => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Frequency get frequency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionProviderCopyWith<SubscriptionProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionProviderCopyWith<$Res> {
  factory $SubscriptionProviderCopyWith(SubscriptionProvider value,
          $Res Function(SubscriptionProvider) then) =
      _$SubscriptionProviderCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'brand_color') String color,
      @JsonKey(name: 'max_subscribers') int maxSubscribers,
      double price,
      String? description,
      @JsonKey(name: 'logo_url') String logo,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Frequency frequency});
}

/// @nodoc
class _$SubscriptionProviderCopyWithImpl<$Res>
    implements $SubscriptionProviderCopyWith<$Res> {
  _$SubscriptionProviderCopyWithImpl(this._value, this._then);

  final SubscriptionProvider _value;
  // ignore: unused_field
  final $Res Function(SubscriptionProvider) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? maxSubscribers = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? frequency = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      maxSubscribers: maxSubscribers == freezed
          ? _value.maxSubscribers
          : maxSubscribers // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Frequency,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionProviderCopyWith<$Res>
    implements $SubscriptionProviderCopyWith<$Res> {
  factory _$SubscriptionProviderCopyWith(_SubscriptionProvider value,
          $Res Function(_SubscriptionProvider) then) =
      __$SubscriptionProviderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'brand_color') String color,
      @JsonKey(name: 'max_subscribers') int maxSubscribers,
      double price,
      String? description,
      @JsonKey(name: 'logo_url') String logo,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Frequency frequency});
}

/// @nodoc
class __$SubscriptionProviderCopyWithImpl<$Res>
    extends _$SubscriptionProviderCopyWithImpl<$Res>
    implements _$SubscriptionProviderCopyWith<$Res> {
  __$SubscriptionProviderCopyWithImpl(
      _SubscriptionProvider _value, $Res Function(_SubscriptionProvider) _then)
      : super(_value, (v) => _then(v as _SubscriptionProvider));

  @override
  _SubscriptionProvider get _value => super._value as _SubscriptionProvider;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? maxSubscribers = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? frequency = freezed,
  }) {
    return _then(_SubscriptionProvider(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      maxSubscribers: maxSubscribers == freezed
          ? _value.maxSubscribers
          : maxSubscribers // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Frequency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionProvider implements _SubscriptionProvider {
  const _$_SubscriptionProvider(
      {required this.id,
      required this.name,
      @JsonKey(name: 'brand_color') required this.color,
      @JsonKey(name: 'max_subscribers') required this.maxSubscribers,
      required this.price,
      required this.description,
      @JsonKey(name: 'logo_url') required this.logo,
      @JsonKey(name: 'created_at') this.createdAt,
      this.frequency = Frequency.month});

  factory _$_SubscriptionProvider.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionProviderFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override

  /// brand color in hex
  @JsonKey(name: 'brand_color')
  final String color;
  @override
  @JsonKey(name: 'max_subscribers')
  final int maxSubscribers;
  @override
  final double price;
  @override
  final String? description;
  @override
  @JsonKey(name: 'logo_url')
  final String logo;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey()
  @override
  final Frequency frequency;

  @override
  String toString() {
    return 'SubscriptionProvider(id: $id, name: $name, color: $color, maxSubscribers: $maxSubscribers, price: $price, description: $description, logo: $logo, createdAt: $createdAt, frequency: $frequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionProvider &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.maxSubscribers, maxSubscribers) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.frequency, frequency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(maxSubscribers),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(frequency));

  @JsonKey(ignore: true)
  @override
  _$SubscriptionProviderCopyWith<_SubscriptionProvider> get copyWith =>
      __$SubscriptionProviderCopyWithImpl<_SubscriptionProvider>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionProviderToJson(this);
  }
}

abstract class _SubscriptionProvider implements SubscriptionProvider {
  const factory _SubscriptionProvider(
      {required int id,
      required String name,
      @JsonKey(name: 'brand_color') required String color,
      @JsonKey(name: 'max_subscribers') required int maxSubscribers,
      required double price,
      required String? description,
      @JsonKey(name: 'logo_url') required String logo,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      Frequency frequency}) = _$_SubscriptionProvider;

  factory _SubscriptionProvider.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionProvider.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override

  /// brand color in hex
  @JsonKey(name: 'brand_color')
  String get color;
  @override
  @JsonKey(name: 'max_subscribers')
  int get maxSubscribers;
  @override
  double get price;
  @override
  String? get description;
  @override
  @JsonKey(name: 'logo_url')
  String get logo;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  Frequency get frequency;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionProviderCopyWith<_SubscriptionProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
