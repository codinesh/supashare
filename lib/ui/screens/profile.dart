import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/providers/auth_provider.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(authStateProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(user.maybeWhen((user) => user?.email ?? '', orElse: () => 'None')),
        ElevatedButton(
          child: const Text('Logout'),
          onPressed: () {
            ref.read(authStateProvider.notifier).logout();
          },
        ),
      ],
    );
  }
}
