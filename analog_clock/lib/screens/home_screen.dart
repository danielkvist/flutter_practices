import 'package:analog_clock/screens/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.settings_input_component),
        color: Theme.of(context).iconTheme.color,
        onPressed: () {},
      ),
      actions: <Widget>[
        buildAddButton(context),
      ],
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
