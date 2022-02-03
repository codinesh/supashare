import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/ui/subscription_card.dart';
import 'package:supashare/utils/constants.dart';

import '../../providers/auth_provider.dart';

final subscriptions = [
  Subscription(
      id: 'netflix',
      name: 'Netflix',
      color: Colors.red,
      owner: 'Dinesh',
      price: 800.0,
      description: 'Netflix',
      image: 'assets/netflix.webp'),
  Subscription(
      id: 'prime',
      name: 'prime',
      frequency: Frequency.year,
      color: Color.fromARGB(226, 224, 123, 8),
      owner: 'Dinesh',
      price: 1000.0,
      description: 'Netflix',
      image: 'assets/amazon.png'),
  Subscription(
      id: 'hotstar',
      name: 'Hotstar',
      color: Color.fromRGBO(4, 143, 112, 0),
      owner: 'Dinesh',
      price: 1200.0,
      description: 'Netflix',
      image: 'assets/hotstar.svg'),
  Subscription(
      id: 'zee5',
      name: 'Zee 5',
      color: Colors.orange,
      owner: 'Dinesh',
      price: 250.0,
      description: 'Netflix',
      image: 'assets/zee5.png'),
];

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authStateProvider.notifier);

    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 8.0, right: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello ${authState.state.mapOrNull((value) => value.user!.email)}',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Constants.textGreyColor),
          ),
          SizedBox(height: 8),
          Text(
            'Welcome back!',
            style: TextStyle(fontSize: 18, color: Constants.textGreyColor),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(height: 14),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListView.separated(
                itemBuilder: (a, b) {
                  return SubscriptionCard(subscriptions[b]);
                },
                separatorBuilder: (a, b) {
                  return SizedBox(height: 10);
                },
                itemCount: subscriptions.length),
          ))
        ],
      ),
    );
  }
}
