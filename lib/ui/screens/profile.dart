import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supashare/providers/auth_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supashare/utils/constants.dart';

class ProfileScreen extends HookConsumerWidget {
  ProfileScreen({Key? key}) : super(key: key);

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNameController = useTextEditingController(text: 'User Name');
    final userProvider = ref.watch(authStateProvider.notifier);
    var user = ref.watch(authStateProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(user.maybeWhen((user) => user?.email ?? '', orElse: () => 'None')),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  cursorColor: Colors.red,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                  controller: userNameController,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();

                        var resp = await userProvider.updateName(userNameController.text);
                        if (resp != null) {
                          context.showErrorSnackBar(message: resp);
                        } else {
                          context.showSnackBar(message: 'Upated');
                        }
                      }
                    },
                    child: const Text('Update'))
              ],
            ),
          ),
        ),
        ElevatedButton(
          child: const Text('Logout'),
          onPressed: () {
            ref.read(authStateProvider.notifier).logout();
          },
        ),
      ],
    );
  }
}
