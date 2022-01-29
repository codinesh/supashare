import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/authstate.dart';
import '../notifiers/authstate_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (ref) => AuthStateNotifier());
