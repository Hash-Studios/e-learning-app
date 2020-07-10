import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu(
      {Key key,
      this.slideAnimation,
      this.menuAnimation,
      this.selectedIndex,
      @required this.onMenuItemClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.33,
            height: MediaQuery.of(context).size.height * 0.67,
            decoration: BoxDecoration(
              color: Color(0x80FFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 135,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/navwave.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(BoxIcons.bx_window_close),
              onPressed: () {},
            )),
        SlideTransition(
          position: slideAnimation,
          child: ScaleTransition(
            scale: menuAnimation,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
