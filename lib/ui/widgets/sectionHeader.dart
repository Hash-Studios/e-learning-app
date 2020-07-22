import 'package:elearning/theme/box_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class SectionHeader extends StatefulWidget {
  const SectionHeader({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function onPressed;

  @override
  _SectionHeaderState createState() => _SectionHeaderState();
}

class _SectionHeaderState extends State<SectionHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 20,
          width: 4,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Color(0xFF343434)),
        ),
        Text(
          widget.text,
          style: TextStyle().copyWith(
            fontSize: 17.0,
          ),
        ),
        Spacer(),
        CupertinoButton(
          child:
              Icon(BoxIcons.bx_chevron_right, color: material.Colors.lightBlue),
          onPressed: widget.onPressed,
        )
      ],
    );
  }
}
