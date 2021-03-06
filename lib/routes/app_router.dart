// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:supashare/ui/screens/providerdetails.dart';

import '../models/subscription_provider.dart';
import '../ui/screens/appstartup.dart';
import '../ui/screens/forgotpassword.dart';
import '../ui/screens/home.dart';
import '../ui/screens/layout.dart';
import '../ui/screens/login.dart';
import '../ui/screens/profile.dart';
import '../ui/screens/register.dart';
import 'routes.dart';

/// A utility class provides basic methods for navigation.
/// This class has no constructor and all variables are `static`.
@immutable
class AppRouter {
  const AppRouter._();

  /// The global key used to access navigator without context
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// The name of the route that loads on app startup
  static const String initialRoute = Routes.AppStartupScreenRoute;

  /// This method is used when the app is navigating using named routes.
  ///
  /// It maps each route name to a specific screen route.
  ///
  /// In case of unknown route name, it returns a route indicating error.
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return null;
      case Routes.AppStartupScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Layout(child: const AppStartupScreen()),
          settings: const RouteSettings(name: Routes.AppStartupScreenRoute),
        );
      case Routes.LoginScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Layout(child: Scaffold(body: LoginScreen())),
          settings: const RouteSettings(name: Routes.LoginScreenRoute),
        );
      case Routes.RegisterScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Layout(child: const RegisterScreen()),
          settings: const RouteSettings(name: Routes.RegisterScreenRoute),
        );
      case Routes.ForgotPasswordScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Layout(child: const ForgotPasswordScreen()),
          settings: const RouteSettings(name: Routes.ForgotPasswordScreenRoute),
        );
      case Routes.WelcomeScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Layout(child: const HomeScreen()),
          settings: const RouteSettings(name: Routes.WelcomeScreenRoute),
        );
      case Routes.ProviderDetailScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Layout(child: ProviderDetail(settings.arguments as SubscriptionProvider)),
          settings: const RouteSettings(name: Routes.WelcomeScreenRoute),
        );
      case Routes.ProfileScreenRoute:
        return MaterialPageRoute(
          builder: (_) => Layout(child: ProfileScreen()),
          settings: const RouteSettings(name: Routes.ProfileScreenRoute),
        );
      default:
        return _errorRoute(settings.name ?? '/');
    }
  }

  /// This method returns an error page to indicate redirection to an
  /// unknown route.
  static Route<dynamic> _errorRoute(String name) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => Layout(
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Error: Could not find route: ',
              style: const TextStyle(fontSize: 22, color: Colors.red),
              children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// This method is used to navigate to a screen using it's name
  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  /// This method is used to navigate back to the previous screen.
  ///
  /// The [result] can contain any value that we want to return to the previous
  /// screen.
  static Future<void> pop([dynamic result]) async {
    navigatorKey.currentState!.pop(result);
  }

  /// This method is used to navigate all the way back to a specific screen.
  ///
  /// The [routeName] is the name of the screen we want to go back to.
  static void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  /// This method is used to navigate all the way back to the first screen
  /// shown on startup i.e. the [initialRoute].
  static void popUntilRoot() {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(initialRoute));
  }
}
