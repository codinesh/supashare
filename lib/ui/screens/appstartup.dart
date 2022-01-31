import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/providers/auth_provider.dart';
import 'package:supashare/ui/screens/login.dart';
import 'home.dart';

class AppStartupScreen extends HookConsumerWidget {
  const AppStartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authprovider = ref.watch(authStateProvider);

    return Container(
      child: authprovider.when(
        (_, __) => const HomeScreen(),
        authenticating: () => Container(
          color: Colors.blue,
          child: const CircularProgressIndicator(),
        ),
        error: (e) => Center(
          child: Text('Error: ' + e.toString()),
        ),
        unauthenticated: () => LoginScreen(),
      ),
    );
  }
}
