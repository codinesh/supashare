import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authstate.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({User? user, Session? session}) = Data;
  const factory AuthState.authenticating() = Authenticating;
  const factory AuthState.unauthenticated() = UnAuthenticated;
  const factory AuthState.error([String? message]) = ErrorDetails;
}
