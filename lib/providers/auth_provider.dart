import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/models/subscription_provider.dart';
import 'package:supashare/notifiers/subscription_notifier.dart';

import '../models/authstate.dart';
import '../models/subscription.dart';
import '../notifiers/authstate_notifier.dart';
import '../notifiers/provider_notifier.dart';
import 'storageserviceprovider.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  var keyValueStorageService = ref.watch(keyValueStorageServiceProvider);
  return AuthStateNotifier(keyValueStorageService);
});

final providersProvider =
    StateNotifierProvider<ProviderNotifier, List<SubscriptionProvider>>((ref) => ProviderNotifier());

final subscriptionProvider = StateNotifierProvider<SubscriptionNotifier, List<Subscription>>((ref) {
  var providers = ref.watch(providersProvider);
  return SubscriptionNotifier(providers);
});
