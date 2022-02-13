import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription_provider.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

enum Frequency { year, month, quarter }

@freezed
class Subscription with _$Subscription {
  const factory Subscription(
      {required int id,
      @JsonKey(name: 'provider_id') required int providerId,
      @JsonKey(name: 'is_owner') bool? isOwner,
      @JsonKey(name: 'start_date') required DateTime startDate,
      @JsonKey(ignore: true) SubscriptionProvider? provider,
      @JsonKey(name: 'user_id') required String subscriberId}) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}
