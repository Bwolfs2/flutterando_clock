import 'package:flutterando_clock/app/modules/shared/services/clock_service.dart';
import 'package:mobx/mobx.dart';
import 'dart:math' as math;
part 'clock_controller.g.dart';

class ClockController = _ClockBase with _$ClockController;

const minSecAngle = math.pi / 30;
const hourAngle =  math.pi / 6;

abstract class _ClockBase with Store {
  final ClockService clockService;
  _ClockBase(this.clockService) {
    clockService.clock$.listen((dateChanged) {
      secondsAngle = dateChanged.second * minSecAngle;
      minutesAngle = dateChanged.minute * minSecAngle;
      hoursAngle = dateChanged.hour * hourAngle;
    });
  }

  @observable
  double minutesAngle;
  @observable
  double secondsAngle;
  @observable
  double hoursAngle;
}
