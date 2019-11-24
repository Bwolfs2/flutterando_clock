import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';

import 'clock_controller.dart';

class ClockWidget extends StatelessWidget {
  final controller = HomeModule.to.bloc<ClockController>();

  @override
  Widget build(BuildContext context) {
    var radius = MediaQuery.of(context).size.width * .8;
    print(radius);
    return Observer(
        builder: (_) => Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: radius,
                  height: radius,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 5),
                      borderRadius: BorderRadius.circular(radius)),
                ),
               
                Positioned(
                  top: radius / 6,
                  child: Transform.rotate(
                    alignment: Alignment(0, 1),
                    angle: controller.secondsAngle,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 2,
                    ),
                  ),
                ),
                Positioned(
                  top: radius / 6,
                  child: Transform.rotate(
                    alignment: Alignment.bottomLeft,
                    angle: controller.minutesAngle,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 2,
                    ),
                  ),
                ),
                Positioned(
                  top: radius / 6,
                  child: Transform.rotate(
                    alignment: Alignment.bottomLeft,
                    angle: controller.hoursAngle,
                    child: Container(
                      color: Colors.white,
                      height: 100,
                      width: 2,
                    ),
                  ),
                )
              ],
            ));
  }
}
