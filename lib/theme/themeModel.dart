import 'package:flutter/material.dart';
import 'package:elearning/theme/theme.dart';
// import 'package:elearning/main.dart' as main;

enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = kLightTheme;
  ThemeType themeType = ThemeType.Dark;

  ThemeModel(this.currentTheme, this.themeType);

  // toggleTheme() {
  //   if (this.themeType == ThemeType.Dark) {
  //     main.prefs.setBool("darkMode", false);
  //     this.currentTheme = kLightTheme;
  //     this.themeType = ThemeType.Light;
  //     print(main.prefs.getBool("darkMode"));
  //     return notifyListeners();
  //   }

  //   if (this.themeType == ThemeType.Light) {
  //     main.prefs.setBool("darkMode", true);
  //     this.currentTheme = kDarkTheme;
  //     this.themeType = ThemeType.Dark;
  //     print(main.prefs.getBool("darkMode"));
  //     return notifyListeners();
  //   }
  // }

  returnTheme() {
    return themeType;
  }
}
