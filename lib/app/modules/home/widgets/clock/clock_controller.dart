import 'package:flutterando_clock/app/modules/shared/services/clock_service.dart';
import 'package:mobx/mobx.dart';

part 'clock_controller.g.dart';

class ClockController = _ClockBase with _$ClockController;

const minSecAngle = -(360 / 60);
const hourAngle = -(360 / 12);

abstract class _ClockBase with Store {
  final ClockService clockService;
  _ClockBase(this.clockService) {
    clockService.clock$.listen((dateChanged) {
      


    });
  }
  

  @observable
  int minutesAngle;
  @observable
  int secondsAngle;
  @observable
  int hoursAngle;
}
