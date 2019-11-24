import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterando_clock/app/modules/home/widgets/clock/clock_widget.dart';
import 'package:flutterando_clock/app/modules/home/widgets/digital_clock/digital_clock_widget.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime date;
  final dateFormat = DateFormat();

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
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "${date.day}",
                  style:
                      style.copyWith(fontSize: 50, fontWeight: FontWeight.w300),
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
              style: style.copyWith(fontSize: 25, fontWeight: FontWeight.w300),
            ),
           DigitalClockWidget(),
           ClockWidget(),
            
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                "The alarm will go off in 2 hours 10 minutes",
                style:
                    style.copyWith(fontSize: 25, fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
