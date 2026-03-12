import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world_app/main.dart';

void main() {
  testWidgets('Hello World smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Hello World'), findsOneWidget);
  });
}
