import 'package:flutter/material.dart';

class Navigation {
  final VoidCallback onLaunch;
  Navigation(this.onLaunch);

  factory Navigation.byScreen({
    required GlobalKey<NavigatorState>? globalNavigatorKey,
    required Widget screen,
  }) {
    return _ScreenNavigation(
        globalNavigatorKey: globalNavigatorKey, screen: screen);
  }
}

class _ScreenNavigation extends Navigation {
  _ScreenNavigation({
    required Widget screen,
    required GlobalKey<NavigatorState>? globalNavigatorKey,
  }) : super(() {
          globalNavigatorKey?.currentState?.push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) => screen,
            ),
          );
        });
}
