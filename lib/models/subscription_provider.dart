import 'package:freezed_annotation/freezed_annotation.dart';
import 'subscription.dart';

part 'subscription_provider.freezed.dart';
part 'subscription_provider.g.dart';

@freezed
class SubscriptionProvider with _$SubscriptionProvider {
  const factory SubscriptionProvider(
      {required int id,
      required String name,

      /// brand color in hex
      @JsonKey(name: 'brand_color') required int color,
      @JsonKey(name: 'max_subscribers') required int maxSubscribers,
      required double price,
      required String? description,
      @JsonKey(name: 'logo_url') required String logo,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @Default(Frequency.month) Frequency frequency}) = _SubscriptionProvider;

  factory SubscriptionProvider.fromJson(Map<String, dynamic> json) => _$SubscriptionProviderFromJson(json);
}
