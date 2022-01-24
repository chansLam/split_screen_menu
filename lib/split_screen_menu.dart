import 'package:flutter/material.dart';
import 'package:split_screen_menu/navigator.dart';

// Determine if we should use mobile layout or not. The
// number 600 here is a common breakpoint for a typical
// 7-inch tablet.
bool isMobileLayout(BuildContext context) => MediaQuery.of(context).size.shortestSide < 600;

class SplitScreenMenu extends StatelessWidget {
  const SplitScreenMenu({
    Key? key,
    required this.menu,
    this.initialRoute,
    this.onGenerateRoute,
    this.initPage
  }) : super(key: key);
  final Widget menu;
  final String? initialRoute;
  final Widget? initPage;
  final RouteFactory? onGenerateRoute;

  @override
  Widget build(BuildContext context) {
    if (!isMobileLayout(context)) {
      return Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.42,
              ),
              Container(width: 0.5, color: Colors.black),
              Expanded(
                child: MenuNavigator(
                    initialRoute: initialRoute,
                    menuRoute: onGenerateRoute,
                    initPage: initPage
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.42,
            child: menu,
          )
        ],
      );
    } else {
      // narrow screen: show content, menu inside drawer
      return menu;
    }
  }
}
