import 'package:flutter/material.dart';
import 'package:split_screen_menu/navigator.dart';
import 'package:split_screen_menu/split_screen_menu.dart';
import 'package:split_screen_menu_example/frist_page.dart';
import 'package:split_screen_menu_example/routes.dart';

import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.getMainRouters,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SplitScreenMenu example app'),
          leading: Builder(
            builder: (context) =>
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
          ),
        ),
        drawer: SplitScreenMenu(
          menu: Builder(
            builder: (context) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: ()=> Navigator.pop(context),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(
                      height: 10,
                      thickness: 10,
                      color: Color(0xfff2f2f2),
                    ),
                    ListTile(
                        title: const Text("Push Frist Page"),
                        onTap: ()=> MenuNavigator.push(context, MaterialPageRoute(builder: (_)=> const FristPage()))
                    ),
                    ListTile(
                        title: const Text("Push SecondPage Page"),
                        onTap: ()=> MenuNavigator.push(context, MaterialPageRoute(builder: (_)=> const SecondPage()))
                    ),
                    const Divider(
                      height: 10,
                      thickness: 10,
                      color: Color(0xfff2f2f2),
                    ),
                    ListTile(
                        title: const Text("pushNamed Frist Page"),
                        onTap: ()=> MenuNavigator.pushNamed(context, "f")
                    ),
                    ListTile(
                        title: const Text("pushNamed SecondPage Page"),
                        onTap: ()=> MenuNavigator.pushNamed(context, "s")
                    ),
                    const Divider(
                      height: 10,
                      thickness: 10,
                      color: Color(0xfff2f2f2),
                    ),
                    ListTile(
                        title: const Text("popAndPushNamed Frist Page"),
                        onTap: ()=> MenuNavigator.popAndPushNamed(context, "f")
                    ),
                    ListTile(
                        title: const Text("popAndPushNamed SecondPage Page"),
                        onTap: ()=> MenuNavigator.popAndPushNamed(context, "s")
                    ),
                    const Divider(
                      height: 10,
                      thickness: 10,
                      color: Color(0xfff2f2f2),
                    ),
                  ],
                ),
              ),
            ),
          ),
          initialRoute: "f",
          onGenerateRoute: Routes.getMainRouters,
        ),
        body: const Center(
          child: Text('Running on: MainPage'),
        ),
      ),
    );
  }
}
