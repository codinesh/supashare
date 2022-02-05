import 'dart:math';

import 'package:flutter/material.dart';
import 'package:supashare/routes/routes.dart';

import '../models/subscription.dart';
import '../routes/app_router.dart';
import '../utils/constants.dart';
import '../utils/extensions.dart';

class SubscriptionCard extends StatelessWidget {
  Subscription subscription;

  SubscriptionCard(this.subscription, {Key? key}) : super(key: key);
  var rand = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    final brandColor = getColorFromString(subscription.provider!.color);

    return InkWell(
      borderRadius: BorderRadius.circular(28),
      onTap: () {
        AppRouter.pushNamed(Routes.SubscriptionDetailScreenRoute, args: subscription);
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
                    'assets/' + subscription.provider!.logo,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subscription.provider!.name,
                          style: TextStyle(
                            fontSize: 32,
                            color: brandColor,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(subscription.provider!.name, style: const TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '₹' + subscription.provider!.price.toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 24,
                              color: brandColor,
                            ),
                            children: [
                              TextSpan(
                                text: ' / ' + subscription.provider!.frequency.name,
                                style: const TextStyle(fontSize: 18, color: Constants.textGreyColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (MediaQuery.of(context).size.width > 400)
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
              image: AssetImage(subscription.provider!.logo), opacity: 0.051, scale: 3, repeat: ImageRepeat.repeat),
          borderRadius: BorderRadius.circular(28),
          color: Constants.primaryColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
