import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/models/subscription_provider.dart';
import 'package:supashare/utils/constants.dart';

import '../models/subscription.dart';

class SubscriptionNotifier extends StateNotifier<List<Subscription>> {
  late List<SubscriptionProvider> _providers;
  SubscriptionNotifier(List<SubscriptionProvider> providers) : super([]) {
    _loadSubscriptions();
    _providers = providers;
  }

  Future<void> _loadSubscriptions() async {
    var response = await supabase.from('Subscriptions').select().execute();

    if (response.error == null) {
      var subscriptions = List<Map<String, dynamic>>.from(response.data);
      state = subscriptions.map((subscription) {
        return Subscription.fromJson(subscription).copyWith(
            provider: _providers.firstWhere((provider) => provider.id == subscription['provider_id']).copyWith());
      }).toList();
    }
  }

  void add(Subscription subscription) {
    state.add(subscription);
  }

  List<Subscription> list() {
    return [...state];
  }
}
