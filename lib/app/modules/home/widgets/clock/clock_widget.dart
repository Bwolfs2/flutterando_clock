import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';
import 'package:flutterando_clock/app/modules/home/widgets/clock_dial_painter/clock_dial_painter.dart';
import 'clock_controller.dart';

class ClockWidget extends StatelessWidget {
  final controller = HomeModule.to.bloc<ClockController>();

  @override
  Widget build(BuildContext context) {
    var radius = MediaQuery.of(context).size.width * .8;
    return Observer(
      builder: (_) => Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: radius,
            height: radius,
            decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 6),
                  BoxShadow(
                      color:Theme.of(context).backgroundColor.withOpacity(.9), blurRadius: 18),
                ],
                border: Border.all(
                    color: Theme.of(context).backgroundColor.withOpacity(.8),
                    width: 8),
                borderRadius: BorderRadius.circular(radius)),
          ),
          Positioned(
            top: 18,
            child: Container(
              width: radius - 35,
              child: CustomPaint(
                painter: ClockDialPainter(Theme.of(context)),
              ),
            ),
          ),
          Positioned(
            top: radius / 6,
            child: Transform.rotate(
              alignment: Alignment(0, 1),
              angle: controller.secondsAngle,
              child: Container(
                color: Theme.of(context).primaryColor.withOpacity(.5),
                height: radius / 3,
                width: 2,
              ),
            ),
          ),
          Positioned(
            top: radius / 6,
            child: Transform.rotate(
              alignment: Alignment(0, 1),
              angle: controller.minutesAngle,
              child: Container(
                color: Theme.of(context).primaryColor.withOpacity(.8),
                height: radius / 3,
                width: 3,
              ),
            ),
          ),
          Positioned(
            top: radius / 6,
            child: Transform.rotate(
              alignment: Alignment(0, 1),
              angle: controller.hoursAngle,
              child: Container(
                alignment: Alignment.topRight,
                color: Theme.of(context).primaryColor.withOpacity(.8),
                height: radius / 3,
                width: 3,
                child: Container(
                  color: Colors.red,
                  width: 3,
                  height: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
