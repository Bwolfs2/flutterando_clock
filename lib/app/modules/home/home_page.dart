import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_clock/app/app_module.dart';
import 'package:flutterando_clock/app/modules/home/widgets/clock/clock_widget.dart';
import 'package:flutterando_clock/app/modules/home/widgets/digital_clock/digital_clock_widget.dart';
import 'package:intl/intl.dart';

import '../../app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime date;
  final dateFormat = DateFormat();

  final controller = AppModule.to.bloc<AppController>();

  @override
  void initState() {
    updateTime();
    super.initState();
  }

  updateTime() async {
    setState(() {
      date = DateTime.now();
    });
    await Future.delayed(Duration(seconds: 1), updateTime);
  }

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(color: Theme.of(context).primaryColor);

    if (date == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      floatingActionButton: Observer(
        builder: (_) => FloatingActionButton(
          backgroundColor: controller.darkMode ? Colors.white : Colors.black,
          child: controller.darkMode
              ? Icon(
                  Icons.wb_incandescent,
                  color: Colors.black,
                )
              : Icon(
                  Icons.wb_incandescent,
                  color: Colors.white,
                ),
          onPressed: () {
            controller.changeTheme();
          },
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor.withOpacity(.9),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "${date.day}",
                      style: style.copyWith(
                          fontSize: 50, fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 10),
                      child: Text(
                        "${DateFormat("MMM y").format(date)}",
                        style: style.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
                Text(
                  "STUDY ENGLISH",
                  style:
                      style.copyWith(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                DigitalClockWidget(),
                ClockWidget(),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    "The alarm will go off in 2 hours 10 minutes",
                    style: style.copyWith(
                        fontSize: 25, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
