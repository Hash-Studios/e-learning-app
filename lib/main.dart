import 'package:elearning/ui/pages/help.dart';
import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/ui/pages/navmenu/menu_dashboard_layout.dart';
import 'package:elearning/ui/pages/onboarding1.dart';
import 'package:elearning/ui/pages/setting.dart';
import 'package:elearning/ui/pages/undefinedScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:elearning/global/globals.dart' as globals;
import 'package:elearning/routes/router.dart' as router;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences prefs;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((value) => runApp(
              RestartWidget(
                child: MyApp(),
              ),
            ));
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void getLoginStatus() async {
    prefs = await SharedPreferences.getInstance();
    globals.gAuth.googleSignIn.isSignedIn().then((value) {
      prefs.setBool("isLoggedin", value);
    });
  }

  @override
  void initState() {
    getLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      onGenerateRoute: router.generateRoute,
      onUnknownRoute: (settings) => CupertinoPageRoute(
          builder: (context) => UndefinedScreen(
                name: settings.name,
              )),
      // theme: Provider.of<ThemeModel>(context).currentTheme,
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>().restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
