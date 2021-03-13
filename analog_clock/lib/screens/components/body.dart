import 'package:analog_clock/screens/components/clock.dart';
import 'package:analog_clock/screens/components/time_in_hours_and_minutes.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            'Barcelona, Spain',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHoursAndMinutes(),
          SizedBox(
            height: 48.0,
          ),
          Clock(),
          Spacer(),
        ],
      ),
    );
  }
}
