import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/providers/auth_provider.dart';

import '../../routes/app_router.dart';
import '../../routes/routes.dart';

class AppStartupScreen extends HookConsumerWidget {
  const AppStartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authprovider = ref.watch(authStateProvider);

    authprovider.maybeWhen(
      (user, session) => AppRouter.pushNamed(Routes.WelcomeScreenRoute),
      orElse: () {
        AppRouter.pushNamed(Routes.LoginScreenRoute);
      },
    );

    return Container();
  }
}
