import 'package:elearning/theme/box_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 20,
          width: 4,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: const Color(0xFF343434)),
        ),
        Text(
          text,
          style: const TextStyle().copyWith(
            fontSize: 17.0,
          ),
        ),
        const Spacer(),
        CupertinoButton(
          onPressed: onPressed as void Function()?,
          child: const Icon(BoxIcons.bx_chevron_right,
              color: material.Colors.lightBlue),
        )
      ],
    );
  }
}
