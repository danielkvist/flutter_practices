import 'dart:async';
import 'package:flutter/material.dart';

class TimeInHoursAndMinutes extends StatefulWidget {
  @override
  _TimeInHoursAndMinutesState createState() => _TimeInHoursAndMinutesState();
}

class _TimeInHoursAndMinutesState extends State<TimeInHoursAndMinutes> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String _morning = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute.toString().padLeft(2, '0')}",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(_morning),
      ],
    );
  }
}
