import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/utils/constants.dart';

import '../../providers/auth_provider.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Netflix', style: TextStyle(fontSize: 32)),
                                Text('Dinesh', style: TextStyle(fontSize: 18)),
                                Text(
                                  '₹200',
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Constants.orangeColor),
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
                                    value: 0.6,
                                    color: Colors.yellow,
                                    backgroundColor:
                                        Colors.yellow.shade700.withOpacity(0.4),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '64%',
                                      style: TextStyle(fontSize: 32),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(
                            0,
                            0,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Constants.textGreyColor,
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(
                            0,
                            0,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Constants.lightSkeletonColor,
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(
                            0,
                            0,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(
                            0,
                            0,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
