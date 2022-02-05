// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionProvider _$$_SubscriptionProviderFromJson(Map<String, dynamic> json) => _$_SubscriptionProvider(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['brand_color'] as String,
      maxSubscribers: json['max_subscribers'] as int,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String?,
      logo: json['logo_url'] as String,
      createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
      frequency: $enumDecodeNullable(_$FrequencyEnumMap, json['frequency']) ?? Frequency.month,
    );

Map<String, dynamic> _$$_SubscriptionProviderToJson(_$_SubscriptionProvider instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand_color': instance.color,
      'max_subscribers': instance.maxSubscribers,
      'price': instance.price,
      'description': instance.description,
      'logo_url': instance.logo,
      'created_at': instance.createdAt?.toIso8601String(),
      'frequency': _$FrequencyEnumMap[instance.frequency],
    };

const _$FrequencyEnumMap = {
  Frequency.year: 'year',
  Frequency.month: 'month',
  Frequency.quarter: 'quarter',
};
