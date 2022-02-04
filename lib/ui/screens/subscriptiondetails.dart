import 'package:flutter/material.dart';
import '../../models/subscription.dart';

class SubscriptionDetail extends StatelessWidget {
  Subscription subscription;
  SubscriptionDetail(this.subscription, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(subscription.image), opacity: 0.1, fit: BoxFit.scaleDown, repeat: ImageRepeat.repeat)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            subscription.image,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            subscription.name,
            style: const TextStyle(fontSize: 42),
          ),
          Text(
            subscription.owner,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              text: '₹ ' + subscription.price.toStringAsFixed(0),
              style: const TextStyle(fontSize: 28),
              children: [TextSpan(text: ' /' + subscription.frequency.name, style: const TextStyle(fontSize: 18))],
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
