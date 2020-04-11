import 'package:flutter/material.dart';
import 'package:preferences/src/share_preferences/preferences_user.dart';
import 'package:preferences/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new Preferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Preferences'),
          backgroundColor: (prefs.secondaryColor) ? Colors.teal : Colors.blue,
        ),
        drawer: MenuWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Secondary color: ${prefs.secondaryColor}'),
            Divider(),
            Text('Gender: ${prefs.gender}'),
            Divider(),
            Text('Name: ${prefs.name}'),
            Divider(),
          ],
        ));
  }
}
