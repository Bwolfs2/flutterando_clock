import 'package:flutterando_clock/app/modules/shared/services/clock_service.dart';
import 'package:mobx/mobx.dart';
import 'dart:math' as math;
part 'clock_controller.g.dart';

class ClockController = _ClockBase with _$ClockController;

const minSecAngle = math.pi / 30;
const hourAngle = math.pi / 6;

abstract class _ClockBase with Store {
  final ClockService clockService;
  _ClockBase(this.clockService) {
    clockService.clock$.listen((dateChanged) {
      if (dateChanged?.hour != null &&
          dateChanged?.minute != null &&
          dateChanged?.second != null) {
        secondsAngle = dateChanged.second * minSecAngle;
        minutesAngle = dateChanged.minute * minSecAngle;
        hoursAngle = dateChanged.hour * hourAngle;
      }
    });
  }

  @observable
  double minutesAngle = 0.0;
  @observable
  double secondsAngle = 0.0;
  @observable
  double hoursAngle = 0.0;
}
