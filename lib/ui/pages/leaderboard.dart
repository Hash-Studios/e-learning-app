import 'package:elearning/theme/config.dart' as config;
import 'package:elearning/ui/widgets/card.dart';
import 'package:elearning/ui/widgets/sectionHeader.dart';
import 'package:elearning/ui/widgets/statsCard.dart';
import 'package:elearning/ui/widgets/topBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class LeaderboardPage extends StatefulWidget {
  LeaderboardPage({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);
  final Function? onMenuTap;

  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  TextEditingController controller = TextEditingController();
  late bool local;
  final List names = [
    'Sarvesh Mehta',
    'Karanjeet Gill',
    'Rahul Bose',
    'ABCDEF',
    'ABCDEF',
    'ABCDEF',
    'ABCDEF',
    'ABCDEF',
    'ABCDEF',
    'ABCDEF'
  ];

  final List coins = [
    '3895',
    '3678',
    '3675',
    '3456',
    '3455',
    '3454',
    '3453',
    '3452',
    '3451',
    '3450'
  ];

  final List colors = [
    Color(0xFFFFD700),
    Color(0xFFC0C0C0),
    Color(0xFFCD7F32),
    Color(0xFF0396FF),
    Color(0xFF0396FF),
    Color(0xFF0396FF),
    Color(0xFF0396FF),
    Color(0xFF0396FF),
    Color(0xFF0396FF),
    Color(0xFF0396FF)
  ];
  @override
  void initState() {
    local = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: config.Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: local
                ? CustomScrollView(
                    slivers: <Widget>[
                      SliverFixedExtentList(
                          delegate:
                              SliverChildListDelegate.fixed([Container()]),
                          itemExtent:
                              MediaQuery.of(context).size.height * 0.23),
                      SliverToBoxAdapter(
                        child: SectionHeader(
                          text: 'Google Leaderboard',
                          onPressed: () {},
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 240,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 14),
                                    child: CardWidget(
                                      gradient: false,
                                      button: false,
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${index + 1}.",
                                              style: TextStyle(
                                                  fontFamily: 'Red Hat Display',
                                                  fontSize: 18,
                                                  color: Color(0xFF585858)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${names[index]}",
                                              style: TextStyle(
                                                  fontFamily: 'Red Hat Display',
                                                  fontSize: 18,
                                                  color: Color(0xFF585858)),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.elliptical(
                                                        10, 50),
                                                    bottomLeft:
                                                        Radius.elliptical(
                                                            10, 50)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      material.Colors.white,
                                                      colors[index]
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end:
                                                        Alignment.bottomRight)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/CoinSmall.png',
                                                    width: 50,
                                                  ),
                                                  Text(
                                                    "${coins[index]}",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        fontSize: 18,
                                                        color:
                                                            Color(0xFF585858)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      height: 60,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                                top: -5,
                                left: -4,
                                child: Image.asset('assets/images/crown.png'))
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SectionHeader(
                          text: 'My Statistics',
                          onPressed: () {},
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 245,
                          child: StatsCard(),
                        ),
                      ),
                    ],
                  )
                : CustomScrollView(
                    slivers: <Widget>[
                      SliverFixedExtentList(
                          delegate:
                              SliverChildListDelegate.fixed([Container()]),
                          itemExtent:
                              MediaQuery.of(context).size.height * 0.23),
                      SliverToBoxAdapter(
                        child: SectionHeader(
                          text: 'Leaderboard',
                          onPressed: () {},
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 14),
                                    child: CardWidget(
                                      gradient: false,
                                      button: false,
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${index + 1}.",
                                              style: TextStyle(
                                                  fontFamily: 'Red Hat Display',
                                                  fontSize: 18,
                                                  color: Color(0xFF585858)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${names[index]}",
                                              style: TextStyle(
                                                  fontFamily: 'Red Hat Display',
                                                  fontSize: 18,
                                                  color: Color(0xFF585858)),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.elliptical(
                                                        10, 50),
                                                    bottomLeft:
                                                        Radius.elliptical(
                                                            10, 50)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      material.Colors.white,
                                                      colors[index]
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end:
                                                        Alignment.bottomRight)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Image.asset(
                                                    'assets/images/CoinSmall.png',
                                                    width: 50,
                                                  ),
                                                  Text(
                                                    "${coins[index]}",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        fontSize: 18,
                                                        color:
                                                            Color(0xFF585858)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      height: 60,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                                top: -5,
                                left: -4,
                                child: Image.asset('assets/images/crown.png'))
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
          Positioned(
            top: 0,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TopBar(
                      controller: controller,
                      expanded: false,
                      onMenuTap: widget.onMenuTap,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      color: material.Colors.white,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  local = true;
                                });
                              },
                              child: Text(
                                "Local",
                                style: TextStyle(
                                    color: Color(0xFF343434),
                                    fontSize: 20,
                                    fontFamily: 'Red Hat Display',
                                    fontWeight: material.FontWeight.w600),
                              ),
                            ),
                            CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  local = false;
                                });
                              },
                              child: Text(
                                "Global",
                                style: TextStyle(
                                    color: Color(0xFF343434),
                                    fontSize: 20,
                                    fontFamily: 'Red Hat Display',
                                    fontWeight: material.FontWeight.w600),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: AnimatedContainer(
                    margin: local
                        ? EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.33 - 35)
                        : EdgeInsets.only(
                            left:
                                MediaQuery.of(context).size.width * 0.67 - 10),
                    width: 40,
                    height: 4,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                        color: Color(0xFF03A9F4),
                        borderRadius: BorderRadius.circular(500)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
