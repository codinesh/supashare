import 'package:state_notifier/state_notifier.dart';

import '../models/authstate.dart';
import '../utils/constants.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier() : super(const AuthState.unauthenticated());

  Future<void> login(String email, String password) async {
    state = const AuthState.authenticating();

    var result = await supabase.auth.signIn(email: email, password: password);
    if (result.error == null && result.user != null && result.data != null) {
      state = AuthState(user: result.user, session: result.data);
    } else {
      state = const AuthState.error('failed');
    }
  }

  Future<void> signup(String email, String password) async {
    state = const AuthState.authenticating();

    var result = await supabase.auth.signUp(email, password);
    if (result.error == null && result.user != null && result.data != null) {
      state = AuthState(user: result.user, session: result.data);
    } else {
      state = const AuthState.error('failed');
    }
  }
}
