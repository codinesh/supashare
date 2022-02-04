import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/utils/constants.dart';

import '../models/subscription.dart';

class SubscriptionNotifier extends StateNotifier<List<Subscription>> {
  SubscriptionNotifier() : super([]) {
    _loadSubscriptions();
  }

  Future<void> _loadSubscriptions() async {
    var response = await supabase.from('Subscriptions').select().execute();
    if (response.error == null) {
      var subscriptions = List<Map<String, dynamic>>.from(response.data);
      state = subscriptions.map((subscription) => Subscription.fromJson(subscription)).toList();
    }
  }

  void add(Subscription subscription) {
    state.add(subscription);
  }

  List<Subscription> list() {
    return [...state];
  }
}
