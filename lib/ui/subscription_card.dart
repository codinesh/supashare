import 'dart:math';

import 'package:flutter/material.dart';
import 'package:supashare/routes/routes.dart';

import '../routes/app_router.dart';
import '../utils/constants.dart';

enum Frequency { year, month, quarter }

class Subscription {
  String id;
  String name;
  Color color;
  String owner;
  Frequency frequency = Frequency.month;
  double price;
  String description;

  String image;

  Subscription({
    required this.id,
    required this.name,
    required this.color,
    required this.owner,
    required this.price,
    required this.description,
    required this.image,
    this.frequency = Frequency.month,
  });
}

class SubscriptionCard extends StatelessWidget {
  Subscription subscription;

  SubscriptionCard(this.subscription, {Key? key}) : super(key: key);
  var rand = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(28),
      onTap: () {
        AppRouter.pushNamed(Routes.SubscriptionDetailScreenRoute,
            args: subscription);
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
                    subscription.image,
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
                        Text(subscription.name,
                            style: TextStyle(
                                fontSize: 32, color: subscription.color)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(subscription.owner,
                            style: TextStyle(fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '₹' + subscription.price.toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 24,
                              color: subscription.color,
                            ),
                            children: [
                              TextSpan(
                                text: ' / ' + subscription.frequency.name,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Constants.textGreyColor),
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
                            color: subscription.color,
                            backgroundColor:
                                subscription.color.withOpacity(0.4),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              rand.toString() + '%',
                              style: TextStyle(fontSize: 32),
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
              image: AssetImage(subscription.image),
              opacity: 0.051,
              scale: 3,
              repeat: ImageRepeat.repeat),
          borderRadius: BorderRadius.circular(28),
          color: Constants.primaryColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
