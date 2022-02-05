import 'package:flutter/material.dart';
import 'package:supashare/models/subscription_provider.dart';
import '../../models/subscription.dart';

class ProviderDetail extends StatelessWidget {
  SubscriptionProvider provider;
  ProviderDetail(this.provider, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/' + provider.logo),
              opacity: 0.1,
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/' + provider.logo,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            provider.name,
            style: const TextStyle(fontSize: 42),
          ),
          Text(
            provider.name,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              text: '₹ ' + provider.price.toStringAsFixed(0),
              style: const TextStyle(fontSize: 28),
              children: [TextSpan(text: ' /' + provider.frequency.name, style: const TextStyle(fontSize: 18))],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Paid till:' 'January',
            style: TextStyle(fontSize: 28),
          ),
        ],
      ),
    );
  }
}
