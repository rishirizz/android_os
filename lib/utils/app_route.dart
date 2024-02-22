import 'package:android/screens/always_on_display_screen.dart';
import 'package:android/screens/home_screen.dart';
import 'package:android/screens/lock_screen.dart';
import 'package:flutter/material.dart';

class AppPageRouter {
  getPageRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      LockScreen.routeName: (BuildContext context) => const LockScreen(),
      AlwaysOnDisplayScreen.routeName: (BuildContext context) =>
          const AlwaysOnDisplayScreen(),
      HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
    };
    return routes[settings.name];
  }
}
