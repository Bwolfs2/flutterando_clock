import 'package:flutterando_clock/app/modules/shared/services/clock_service.dart';
import 'package:mobx/mobx.dart';

part 'digital_clock_controller.g.dart';

class DigitalClockController = _DigitalClockBase with _$DigitalClockController;

abstract class _DigitalClockBase with Store {
  final ClockService clockService;
  _DigitalClockBase(this.clockService) {
    clockService.clock$.listen((dateChanged) {
      date = dateChanged;
    });
  }

  @observable
  DateTime date;
}
