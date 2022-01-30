import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'routes/app_router.dart';
import 'services/local_storage/key_value_storage_base.dart';
import 'utils/custom_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await KeyValueStorageBase.init();

  await Supabase.initialize(
      url: 'https://dodbjstswbfavxtnmmqi.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTY0MzM4OTY5OSwiZXhwIjoxOTU4OTY1Njk5fQ.SwmH975eUufDEyePyNczrPaZ7xf-YU5iPsZ9-a2JhPA',
      authCallbackUrlHostname: 'login-callback', // optional
      debug: true // optional
      );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supashare',
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: AppRouter.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.mainTheme,
      darkTheme: CustomTheme.mainTheme,
      initialRoute: AppRouter.initialRoute,
    );
  }
}
