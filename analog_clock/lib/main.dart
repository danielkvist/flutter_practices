import 'package:flutter/material.dart';
import 'package:analog_clock/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analog Clock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
