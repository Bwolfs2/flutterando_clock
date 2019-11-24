import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterando_clock/app/modules/home/widgets/clock/clock_widget.dart';

main() {
  testWidgets('ClockWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ClockWidget()));
    final textFinder = find.text('Clock');
    expect(textFinder, findsOneWidget);
  });
}
