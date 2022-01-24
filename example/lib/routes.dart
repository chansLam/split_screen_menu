import 'package:flutter/material.dart';
import 'package:split_screen_menu_example/frist_page.dart';
import 'package:split_screen_menu_example/second_page.dart';

class Routes {
  static MaterialPageRoute getMainRouters(RouteSettings settings){
    Map<String, WidgetBuilder> routes = {
      "f": (_) => const FristPage(),
      "s": (_) => const SecondPage()
    };
    WidgetBuilder builder = routes[settings.name!]!;
    return MaterialPageRoute(
        builder: builder,
        settings: settings
    );
  }
}