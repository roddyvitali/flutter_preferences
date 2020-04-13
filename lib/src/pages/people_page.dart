import 'package:flutter/material.dart';
import 'package:preferences/src/shared_preferences/preferences_user.dart';

class PeoplePage extends StatelessWidget {
  static final String routeName = 'people';
  final prefs = new Preferences();

  @override
  Widget build(BuildContext context) {
    prefs.lastPage = PeoplePage.routeName;
    return ListView(
      children: <Widget>[
        Text('People 1'),
        Text('People 2'),
        Text('People 3'),
        Text('People 4'),
        Text('People 5'),
        Text('People 6'),
      ],
    );
  }
}
