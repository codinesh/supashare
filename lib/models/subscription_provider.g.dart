// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionProvider _$$_SubscriptionProviderFromJson(
        Map<String, dynamic> json) =>
    _$_SubscriptionProvider(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as int,
      owner: json['owner'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      image: json['image'] as String,
      frequency: $enumDecodeNullable(_$FrequencyEnumMap, json['frequency']) ??
          Frequency.month,
    );

Map<String, dynamic> _$$_SubscriptionProviderToJson(
        _$_SubscriptionProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'owner': instance.owner,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'frequency': _$FrequencyEnumMap[instance.frequency],
    };

const _$FrequencyEnumMap = {
  Frequency.year: 'year',
  Frequency.month: 'month',
  Frequency.quarter: 'quarter',
};
