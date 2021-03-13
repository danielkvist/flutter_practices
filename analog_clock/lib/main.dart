import 'package:analog_clock/models/theme_provider.dart';
import 'package:analog_clock/screens/home_screen.dart';
import 'package:analog_clock/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          title: 'Analog Clock',
          debugShowCheckedModeBanner: false,
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: SafeArea(
            child: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
