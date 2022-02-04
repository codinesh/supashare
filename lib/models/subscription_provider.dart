import 'package:freezed_annotation/freezed_annotation.dart';
import 'subscription.dart';

part 'subscription_provider.freezed.dart';
part 'subscription_provider.g.dart';

@freezed
class SubscriptionProvider with _$SubscriptionProvider {
  const factory SubscriptionProvider(
      {required String id,
      required String name,

      /// brand color in hex
      required int color,
      required String owner,
      required double price,
      required String description,
      required String image,
      @Default(Frequency.month) Frequency frequency}) = _SubscriptionProvider;

  factory SubscriptionProvider.fromJson(Map<String, dynamic> json) => _$SubscriptionProviderFromJson(json);
}
