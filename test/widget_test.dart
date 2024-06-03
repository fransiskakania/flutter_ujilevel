import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uji_level/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the button to increment the counter.
    await tester.tap(find.byType(ElevatedButton)); // Assuming you have a button widget to increment the counter
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
