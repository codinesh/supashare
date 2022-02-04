import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/subscription_provider.dart';
import '../utils/constants.dart';

class ProviderNotifier extends StateNotifier<List<SubscriptionProvider>> {
  ProviderNotifier() : super([]) {
    _loadSubscriptionProviders();
  }

  Future<void> _loadSubscriptionProviders() async {
    var response = await supabase.from('Providers').select().execute();
    if (response.error == null) {
      var subscriptions = response.data as List<Map<String, dynamic>>;
      state = subscriptions.map((subscription) => SubscriptionProvider.fromJson(subscription)).toList();
    }
  }
}
