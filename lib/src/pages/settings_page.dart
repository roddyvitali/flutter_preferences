import 'package:flutter/material.dart';
import 'package:preferences/src/shared_preferences/preferences_user.dart';
import 'package:preferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secondaryColor;
  int _gender;

  TextEditingController _textEditingController;
  final prefs = new Preferences();

  @override
  void initState() {
    super.initState();
    _gender = prefs.gender;
    _secondaryColor = prefs.secondaryColor;
    _textEditingController = new TextEditingController(text: prefs.name);
  }

  _setSwitch(bool value) {
    prefs.secondaryColor = value;
    _secondaryColor = value;
    setState(() {});
  }

  _setSelectedRadio(int value) {
    prefs.gender = value;
    _gender = value;
    setState(() {});
  }

  _setName(String value) {
    prefs.name = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        drawer: MenuWidget(),
        body: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(5.0),
                child: Text('Settings',
                    style: TextStyle(
                        fontSize: 45.0, fontWeight: FontWeight.bold))),
            Divider(),
            SwitchListTile(
              value: _secondaryColor,
              title: Text('Secondary color'),
              onChanged: _setSwitch,
            ),
            RadioListTile(
              value: 1,
              title: Text('Male'),
              groupValue: _gender,
              onChanged: _setSelectedRadio,
            ),
            RadioListTile(
              value: 2,
              title: Text('Female'),
              groupValue: _gender,
              onChanged: _setSelectedRadio,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    labelText: 'Name',
                    helperText: 'Name of the person, using the phone'),
                onChanged: _setName,
              ),
            )
          ],
        ));
  }
}
