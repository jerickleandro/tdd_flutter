// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tdd_flutter/main.dart';

void main() {
  testWidgets('home page created', (WidgetTester tester) async {
    final testWidget = MaterialApp(
      home: HomePage(),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();
  });

  testWidgets('find Hello World text', (WidgetTester tester) async {
    final testWidget = MaterialApp(
      home: HomePage(),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();

    expect(find.text('Hello World'), findsOneWidget);
  });

  testWidgets('Button Click is found', (WidgetTester tester) async {
    final testWidget = MaterialApp(
      home: HomePage(),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();

    final btn = find.descendant(
        of: find.byType(ElevatedButton), matching: find.byType(Material));

    final materialBtn = tester.widget<Material>(btn);

    expect(materialBtn.color, Colors.black);
    expect(find.text('Click'), findsOneWidget);
    expect(find.byKey(Key('icon_tdd')), findsOneWidget);
  });

  testWidgets('textfield found and clicked', (WidgetTester tester) async {
    // ignore: prefer_const_constructors
    final testWidget = MaterialApp(
      home: const HomePage(),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();

    await tester.pump();

    await tester.enterText(find.byType(TextField), "3");
    var button = find.text("Click");
    await tester.tap(button);
    await tester.pump();
    expect(find.text('É primo'), findsOneWidget);
  });
}
