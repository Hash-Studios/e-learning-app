import 'package:elearning/theme/box_icons_icons.dart';
import 'package:flutter/cupertino.dart';

class Onboarding1 extends StatefulWidget {
  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  final PageController controller = PageController(initialPage: 0);
  int pageNumber;
  @override
  void initState() {
    pageNumber = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFABDCFF),
                Color(0xFF0396FF),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Positioned(
              top: 0, left: 0, child: Image.asset('assets/images/wave.png')),
          Align(
            alignment: Alignment.center,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  pageNumber = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  pageNumber == 2
                      ? Container()
                      : Image.asset('assets/images/${pageNumber + 1}.png'),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      pageNumber == 0
                          ? "Easy access to video lectures, & reading materials."
                          : pageNumber == 1
                              ? "Ask questions, earn coins and dominate the global leaderboard."
                              : "The complete E-learning solution for students of all ages!\n\nJoin for FREE now!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Red Hat Display',
                          fontSize: 14,
                          color: Color(0xFFFFFFFF)),
                    ),
                  )
                ],
              ),
            ),
          ),
          pageNumber == 2
              ? Container()
              : Positioned(
                  bottom: 10,
                  right: 10,
                  child: CupertinoButton(
                    child: Icon(
                      pageNumber == 1
                          ? BoxIcons.bx_check
                          : BoxIcons.bx_chevron_right,
                      color: Color(0xFFFFFFFF),
                      size: 30,
                    ),
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn);
                    },
                  ))
        ],
      ),
    );
  }
}
