import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/card.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // CardWidget(gradient: false, button: true, child: Text('LOG OUT')),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 45,
                // color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(children: <Widget>[
                    Icon(Icons.supervised_user_circle),
                    SizedBox(width: 20),
                    Text('Log Out',
                        style: TextStyle(
                          color: Color(0xffADADAD),
                          fontSize: 25,
                        )),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
