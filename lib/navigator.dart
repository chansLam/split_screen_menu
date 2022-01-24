import 'package:flutter/material.dart';

import 'split_screen_menu.dart';

final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();
class MenuNavigator extends Navigator {
  final RouteFactory? menuRoute;
  final Widget? initPage;
  MenuNavigator({String? initialRoute, this.menuRoute, this.initPage}) : super(
      key: _key,
      initialRoute: initialRoute
  );

  @override
  RouteFactory? get onGenerateRoute => menuRoute ?? (settings)=> MaterialPageRoute(
    builder: (context) => initPage ?? const SizedBox(),
    settings: settings
  );


  static Future<T?>? push<T extends Object?>(BuildContext context,
      Route<T> route) {
    if (isMobileLayout(context)) {
      return Navigator.of(context).push(route);
    } else {
      return _key.currentState?.push(route);
    }
  }

  static Future<T?> pushNamed<T extends Object?>(BuildContext context,
      String routeName, {
        Object? arguments,
      }) {
    if (isMobileLayout(context)) {
      return Navigator.pushNamed(context, routeName);
    } else {
      return _key.currentState!.pushNamed(routeName);
    }
  }

  static Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
      BuildContext context,
      String routeName, {
        TO? result,
        Object? arguments,
      }) {
    if (isMobileLayout(context)) {
      return Navigator.popAndPushNamed(context, routeName);
    } else {
      if (_key.currentState?.canPop() == true) {
        _key.currentState!.pop();
      }
      return _key.currentState!.pushNamed(routeName);
    }
  }
}