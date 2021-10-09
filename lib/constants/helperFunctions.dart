// ignore_for_file: file_names

import 'package:shared_preferences/shared_preferences.dart';

getTheme() async {
  final prefs = await SharedPreferences.getInstance();
  String themeName = prefs.getString("theme") ?? "null";
  return themeName;
}
