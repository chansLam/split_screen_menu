import 'package:flutter/material.dart';
import 'package:split_screen_menu/split_screen_menu.dart';

class FristPage extends StatelessWidget {
  const FristPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FristPage'),
          leading: !isMobileLayout(context) ? null : IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: ()=> Navigator.pop(context),
          ),
        ),
        body: const Center(
          child: Text('Running on: FristPage'),
        ),
      ),
    );
  }

}