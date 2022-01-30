import 'package:state_notifier/state_notifier.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/authstate.dart';
import '../services/local_storage/key_value_storage_service.dart';
import '../utils/constants.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  late KeyValueStorageService _keyValueStorageService;
  User? _currentUser;
  late String _password;

  AuthStateNotifier(KeyValueStorageService keyValueStorageServiceProvider)
      : super(const AuthState.unauthenticated()) {
    _keyValueStorageService = keyValueStorageServiceProvider;
    init();
  }

  void init() async {
    _currentUser = _keyValueStorageService.getAuthUser()!;
    _password = await _keyValueStorageService.getAuthPassword();
    if (_currentUser == null || _password.isEmpty) {
      logout();
    } else {
      state = AuthState(user: _currentUser);
    }
  }

  Future<void> login(String email, String password) async {
    state = const AuthState.authenticating();

    var result = await supabase.auth.signIn(email: email, password: password);
    if (result.error == null && result.user != null && result.data != null) {
      state = AuthState(user: result.user);
      if (result.user != null) {
        _keyValueStorageService.setAuthUser(result.user!);
        _keyValueStorageService.setAuthPassword(password);
        _keyValueStorageService.setAuthToken(result.data!.accessToken);
      }
    } else if (result.error != null) {
      state = AuthState.error(result.error?.message ?? '');
    }
  }

  void updateToken(String value) {
    _keyValueStorageService.setAuthToken(value);
  }

  void _updatePassword(String value) {
    _password = value;
    _keyValueStorageService.setAuthPassword(value);
  }

  void _updateAuthProfile() {
    _keyValueStorageService.setAuthState(state);
    _keyValueStorageService.setAuthUser(_currentUser!);
  }

  void logout() {
    _currentUser = null;
    _password = '';
    state = const AuthState.unauthenticated();
    _keyValueStorageService.resetKeys();
  }

  Future<void> signup(String email, String password) async {
    state = const AuthState.authenticating();

    var result = await supabase.auth.signUp(email, password);
    if (result.error == null && result.user != null && result.data != null) {
      state = AuthState(user: result.user);
      _keyValueStorageService.setAuthUser(result.user!);
      _keyValueStorageService.setAuthPassword(password);
      _keyValueStorageService.setAuthToken(result.data!.accessToken);
    } else {
      state = AuthState.error(result.error?.message ?? '');
    }
  }
}
