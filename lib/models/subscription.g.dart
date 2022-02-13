// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      id: json['id'] as int,
      providerId: json['provider_id'] as int,
      isOwner: json['is_owner'] as bool?,
      startDate: DateTime.parse(json['start_date'] as String),
      subscriberId: json['user_id'] as String,
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider_id': instance.providerId,
      'is_owner': instance.isOwner,
      'start_date': instance.startDate.toIso8601String(),
      'user_id': instance.subscriberId,
    };
