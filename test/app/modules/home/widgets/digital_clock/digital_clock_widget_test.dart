import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterando_clock/app/modules/home/widgets/digital_clock/digital_clock_widget.dart';

main() {
  testWidgets('DigitalClockWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DigitalClockWidget()));
    final textFinder = find.text('DigitalClock');
    expect(textFinder, findsOneWidget);
  });
}
