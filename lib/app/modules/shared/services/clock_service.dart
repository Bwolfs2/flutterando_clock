import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class ClockService extends Disposable {
  ClockService() {
    updateTime();
  }

  updateTime() async {
    changeTime(DateTime.now());
    await Future.delayed(Duration(seconds: 1), updateTime);
  }

  Function(DateTime) get changeTime => clock$.sink.add;

  var clock$ = BehaviorSubject<DateTime>();

  @override
  void dispose() {
    clock$.close();
  }
}
