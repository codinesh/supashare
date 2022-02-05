import 'package:flutter/material.dart';
import '../../models/subscription.dart';

class SubscriptionDetail extends StatelessWidget {
  Subscription subscription;
  SubscriptionDetail(this.subscription, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(subscription.provider!.logo),
              opacity: 0.1,
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            subscription.provider!.logo,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            subscription.provider!.name,
            style: const TextStyle(fontSize: 42),
          ),
          Text(
            subscription.provider!.name,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              text: '₹ ' + subscription.provider!.price.toStringAsFixed(0),
              style: const TextStyle(fontSize: 28),
              children: [
                TextSpan(text: ' /' + subscription.provider!.frequency.name, style: const TextStyle(fontSize: 18))
              ],
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
