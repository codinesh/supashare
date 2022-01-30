import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/authstate.dart';
import '../notifiers/authstate_notifier.dart';
import 'storageserviceprovider.dart';

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  var keyValueStorageService = ref.watch(keyValueStorageServiceProvider);
  return AuthStateNotifier(keyValueStorageService);
});
