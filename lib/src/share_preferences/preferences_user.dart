import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = new Preferences._internal();
  factory Preferences() => _instance;

  Preferences._internal();

  SharedPreferences _prefs;
  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // bool _secondaryColor;
  // int _gender;
  // String _name;

  get gender => _prefs.getInt('gender') ?? 1;
  set gender(int value) => _prefs.setInt('gender', value);

  get secondaryColor => _prefs.getBool('secondaryColor') ?? false;
  set secondaryColor(bool value) => _prefs.setBool('secondaryColor', value);

  get name => _prefs.getString('name') ?? '';
  set name(String value) => _prefs.setString('name', value);
}
