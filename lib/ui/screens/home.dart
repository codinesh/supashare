import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/models/authstate.dart';
import 'package:supashare/utils/constants.dart';

import '../../providers/auth_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authStateProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Welcome',
          style: TextStyle(fontSize: 24, color: Constants.textGreyColor),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          authState.mapOrNull((Data value) => value.user!.email!)!,
          style: const TextStyle(fontSize: 34, color: Constants.textGreyColor),
        ),
      ],
    );
  }
}
