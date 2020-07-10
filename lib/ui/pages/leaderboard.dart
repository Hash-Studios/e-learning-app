import 'package:elearning/theme/config.dart' as config;
import 'package:elearning/ui/widgets/card.dart';
import 'package:elearning/ui/widgets/sectionHeader.dart';
import 'package:elearning/ui/widgets/statsCard.dart';
import 'package:elearning/ui/widgets/topBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class LeaderboardPage extends StatelessWidget {
  LeaderboardPage({
    Key key,
    @required this.onMenuTap,
  }) : super(key: key);
  final Function onMenuTap;
  TextEditingController controller = TextEditingController();
  final List names = ['Sarvesh Mehta', 'Karanjeet Gill', 'Rahul Bose'];
  final List coins = ['3895', '3678', '3675'];

  final List colors = [Color(0xFFFFD700), Color(0xFFC0C0C0), Color(0xFFCD7F32)];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: config.Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.23),
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
                          physics: ScrollPhysics(),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(10, 50),
                                              bottomLeft:
                                                  Radius.elliptical(10, 50)),
                                          gradient: LinearGradient(
                                              colors: [
                                                material.Colors.white,
                                                colors[index]
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/CoinSmall.png',
                                              width: 50,
                                            ),
                                            Text(
                                              "${coins[index]}",
                                              style: TextStyle(
                                                  fontFamily: 'Red Hat Display',
                                                  fontSize: 18,
                                                  color: Color(0xFF585858)),
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
            ),
          ),
          Positioned(
            top: 0,
            child: Column(
              children: <Widget>[
                TopBar(
                  controller: controller,
                  expanded: false,
                  onMenuTap: onMenuTap,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  color: material.Colors.white,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CupertinoButton(
                          onPressed: () {},
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
                          onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
