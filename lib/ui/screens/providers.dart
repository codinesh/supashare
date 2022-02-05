import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:supashare/utils/constants.dart';

import '../../providers/auth_provider.dart';
import '../provider_card.dart';

class ProvidersScreen extends HookConsumerWidget {
  const ProvidersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authStateProvider);
    var providers = ref.watch(providersProvider);

    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 8.0, right: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello ${authState.mapOrNull((value) => value.user!.email)}',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Constants.textGreyColor),
          ),
          const SizedBox(height: 8),
          const Text(
            'Welcome back!',
            style: TextStyle(fontSize: 18, color: Constants.textGreyColor),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 14),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListView.separated(
                itemBuilder: (a, b) {
                  return ProviderCard(providers[b]);
                },
                separatorBuilder: (a, b) {
                  return const SizedBox(height: 10);
                },
                itemCount: providers.length),
          ))
        ],
      ),
    );
  }
}
