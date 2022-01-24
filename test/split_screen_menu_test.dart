import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:split_screen_menu/split_screen_menu.dart';

void main() {
  const MethodChannel channel = MethodChannel('split_screen_menu');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
