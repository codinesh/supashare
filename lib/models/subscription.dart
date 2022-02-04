import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

enum Frequency { year, month, quarter }

@freezed
class Subscription with _$Subscription {
  const factory Subscription(
      {required int id,
      required int provider_id,
      required String name,

      /// brand color in hex
      required int color,
      required String owner,
      required double price,
      required String description,
      required String image,
      @Default(Frequency.month) Frequency frequency}) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}
