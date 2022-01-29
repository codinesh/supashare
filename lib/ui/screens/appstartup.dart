import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/providers/auth_provider.dart';
import 'package:supashare/ui/screens/login.dart';
import 'package:supashare/ui/screens/welcome.dart';

class AppStartupScreen extends HookConsumerWidget {
  const AppStartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authprovider = ref.watch(authStateProvider.notifier);
    return Center(
      child: authprovider.state.maybeWhen(
        (user, session) => WelcomeScreen(),
        orElse: () => LoginScreen(),
      ),
    );
  }
}
