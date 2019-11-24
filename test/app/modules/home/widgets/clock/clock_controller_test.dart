import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutterando_clock/app/modules/home/widgets/clock/clock_controller.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  ClockController clock;

  setUp(() {
    clock = HomeModule.to.bloc<ClockController>();
  });

  group('ClockController Test', () {
    test("First Test", () {
      expect(clock, isInstanceOf<ClockController>());
    });

  });
}
