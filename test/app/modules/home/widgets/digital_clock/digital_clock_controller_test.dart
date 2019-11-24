import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutterando_clock/app/modules/home/widgets/digital_clock/digital_clock_controller.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  DigitalClockController digitalclock;

  setUp(() {
    digitalclock = HomeModule.to.bloc<DigitalClockController>();
  });

  group('DigitalClockController Test', () {
    test("First Test", () {
      expect(digitalclock, isInstanceOf<DigitalClockController>());
    });

  });
}
