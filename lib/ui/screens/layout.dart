import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/providers/auth_provider.dart';
import '../../routes/app_router.dart';

class Layout extends HookConsumerWidget {
  Widget child;
  Layout({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/headerbackground.jpg'), fit: BoxFit.fill),
                color: Colors.blueGrey,
              ),
              child: Text(
                'Supashare',
                style: TextStyle(color: Colors.blueGrey, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (_, __) => const Divider(
                  color: Colors.black,
                ),
                itemCount: 5,
                itemBuilder: (_, index) => ListTile(
                  style: ListTileStyle.drawer,
                  title: Text(
                    'Item $index',
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                    ),
                  ),
                  leading: const Icon(Icons.account_balance_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
                height: 40,
                width: double.maxFinite,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Dinesh'),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Logout'),
                                  content: const Text('Are you sure you want to logout?'),
                                  actions: [
                                    ElevatedButton(
                                      child: const Text('Yes'),
                                      onPressed: () async {
                                        ref.read(authStateProvider.notifier).logout();
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ElevatedButton(
                                      child: const Text('No'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: const Icon(Icons.logout)),
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Providers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              AppRouter.popUntilRoot();
              break;
            case 1:
              AppRouter.pushNamed('/providers');
              break;
            case 2:
              AppRouter.pushNamed('/mysubscriptions');
              break;
            default:
              AppRouter.popUntilRoot();
              break;
          }
        },
      ),
      // appBar: AppBar(
      //   shadowColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text('Hello'),
      // ),
      body: child,
    ));
  }
}
