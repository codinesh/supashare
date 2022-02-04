// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      id: json['id'] as int,
      provider_id: json['provider_id'] as int,
      name: json['name'] as String,
      color: json['color'] as int,
      owner: json['owner'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      image: json['image'] as String,
      frequency: $enumDecodeNullable(_$FrequencyEnumMap, json['frequency']) ??
          Frequency.month,
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider_id': instance.provider_id,
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
