import 'package:flutter_test/flutter_test.dart';

import 'package:flutterando_clock/app/modules/shared/services/clock_service.dart';

void main() {
  ClockService service;

  setUp(() {
    service = ClockService();
  });

  group('ClockService Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<ClockService>());
    });
  });
}
