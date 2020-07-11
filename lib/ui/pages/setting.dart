import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/card.dart';

Widget _container(IconData icon, String title) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    height: 45,
    // color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(children: <Widget>[
        Icon(
          icon,
          color: Colors.black,
        ),
        SizedBox(width: 20),
        Text(title,
            style: TextStyle(
              color: Color(0xffADADAD),
              fontSize: 25,
            )),
      ]),
    ),
  );
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: null),
        backgroundColor: Colors.white,
        leading: CupertinoButton(
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        middle: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Red Hat Display', fontSize: 24),
        ),
      ),
      child: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CupertinoButton(
                child: _container(Icons.supervised_user_circle, 'Logout'),
                onPressed: null),
            CupertinoButton(
                child: _container(Icons.supervised_user_circle, 'Clear Data'),
                onPressed: null),
            CupertinoButton(
                child: _container(Icons.supervised_user_circle, 'ads '),
                onPressed: null),
            CupertinoButton(
                child: _container(
                    Icons.supervised_user_circle, 'How you earn coins ?'),
                onPressed: null),

            CupertinoButton(
                child: _container(Icons.supervised_user_circle, 'Logout'),
                onPressed: null),
            // CupertinoButton(
            //     child: _container(Icons.supervised_user_circle, 'Logout'),
            //     onPressed: null),
            // CupertinoButton(child: Text('hello'), onPressed: null),
            // CupertinoButton(child: Text('hello'), onPressed: null),
            // CardWidget(gradient: false, button: true, child: Text('LOG OUT')),
          ],
        ),
      ),
    );
  }
}
