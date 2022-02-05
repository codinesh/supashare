import 'dart:math';

import 'package:flutter/material.dart';
import 'package:supashare/routes/routes.dart';

import '../models/subscription_provider.dart';
import '../routes/app_router.dart';
import '../utils/constants.dart';

class ProviderCard extends StatelessWidget {
  SubscriptionProvider subscriptionProvider;

  ProviderCard(this.subscriptionProvider, {Key? key}) : super(key: key);
  var rand = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    final brandColor = Color(subscriptionProvider.color);
    return InkWell(
      borderRadius: BorderRadius.circular(28),
      onTap: () {
        AppRouter.pushNamed(Routes.SubscriptionDetailScreenRoute, args: subscriptionProvider);
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: SizedBox(
                  width: 40,
                  child: Image.asset(
                    'assets/' + subscriptionProvider.logo,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subscriptionProvider.name,
                          style: TextStyle(
                            fontSize: 32,
                            color: brandColor,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(subscriptionProvider.name, style: const TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '₹' + subscriptionProvider.price.toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 24,
                              color: brandColor,
                            ),
                            children: [
                              TextSpan(
                                text: ' / ' + subscriptionProvider.frequency.name,
                                style: const TextStyle(fontSize: 18, color: Constants.textGreyColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: rand / 100,
                            color: brandColor,
                            backgroundColor: brandColor.withOpacity(0.4),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              rand.toString() + '%',
                              style: const TextStyle(fontSize: 32),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(subscriptionProvider.logo), opacity: 0.051, scale: 3, repeat: ImageRepeat.repeat),
          borderRadius: BorderRadius.circular(28),
          color: Constants.primaryColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
