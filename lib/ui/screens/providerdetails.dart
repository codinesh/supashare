import 'package:flutter/material.dart';
import 'package:supashare/models/subscription_provider.dart';
import 'package:supashare/providers/auth_provider.dart';
import '../../models/subscription.dart';
import '../../utils/constants.dart';

class ProviderDetail extends StatelessWidget {
  SubscriptionProvider provider;
  ProviderDetail(this.provider, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var availableSlots = provider.maxSubscribers - (provider.subscriptions.length);
    var owner = provider.subscriptions.isNotEmpty ? provider.subscriptions.firstWhere((subscription) => true) : null;

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
            height: 100,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            provider.name,
            style: const TextStyle(fontSize: 42),
          ),
          if (owner != null)
            Text(
              owner.subscriberId.substring(0, 12),
              style: const TextStyle(fontSize: 22),
            ),
          if (owner != null)
            const SizedBox(
              height: 20,
            ),
          RichText(
            text: TextSpan(
              text: '₹ ' + provider.price.toStringAsFixed(0),
              style: const TextStyle(fontSize: 28),
              children: [TextSpan(text: ' /' + provider.frequency.name, style: const TextStyle(fontSize: 18))],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Constants.scaffoldColor.withOpacity(0.5),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              ),
              child: ListView.separated(
                  itemBuilder: (a, b) => ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                      onTap: () {},
                      leading: const Icon(Icons.account_circle),
                      trailing: Text(
                        'paid till January',
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        provider.subscriptions[b].subscriberId.substring(0, 12),
                        style: TextStyle(fontSize: 18),
                      )),
                  separatorBuilder: (a, b) {
                    return const SizedBox(height: 10);
                  },
                  itemCount: provider.subscriptions.length),
            ),
          )
        ],
      ),
    );
  }
}
