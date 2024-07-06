import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music/screen/playmusic.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List a = [
  "assets/m1.png",
  "assets/m2.png",
  "assets/m3.png",
  "assets/m4.png",
  "assets/m5.png",
  "assets/m6.png",
  "assets/m5.png",
  "assets/m8.png",

];

List b = [
  "Mitchelle",
  "Namnso",
  "Onyinye",
  "City Pop",
  "Weekend",
  "Kernal Wist",
  "Party Moster",
  "Dragon Babes"
];

List d = [
  "Chilled Hits",
  "Study Beats",
  "Chill As Folk",
  "City Pop",
  "Weekend",
  "Kernal Wist"
];
List e = [
  "assets/f1.png",
  "assets/f2.png",
  "assets/f3.png",
  "assets/f4.png",
  "assets/f5.png",
  "assets/f6.jpeg",
];List f = [
  "assets/f6.jpeg",
  "assets/f5.png",
  "assets/f4.png",
  "assets/f3.png",
  "assets/f2.png",
  "assets/f1.png",
];

class _HomePageState extends State<HomePage> {
  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayMusic(),
            ));
      } else if (_selectedIndex == 2) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              toolbarHeight: 60,
              leadingWidth: 100,
              leading: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: FittedBox(
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ),
              ),
              actions: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Icon(
                          Ionicons.notifications_outline,
                          color: Colors.white,
                          size: 22,
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: BoxConstraints(
                              minWidth: 10,
                              minHeight: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Ionicons.refresh_sharp,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Ionicons.settings_outline,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                )
              ],
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 87,
                                child: Container(
                                  padding: EdgeInsets.all(1),
                                  child: CustomPaint(
                                    painter: DottedBorderPainter(isFirst: true),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Color.fromRGBO(47, 48, 55, 0.45),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white.withOpacity(0.90),
                                        size: 25,
                                      ),
                                      radius: 45,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 80,
                                child: Text(
                                  "You",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.80),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 100,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: a.length,
                                itemBuilder: (BuildContext ctx, int index) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 55,
                                        width: 87,
                                        child: Container(
                                          padding: EdgeInsets.all(1),
                                          child: CustomPaint(
                                            painter: DottedBorderPainter(
                                                isFirst: false),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 45,
                                              backgroundImage:AssetImage(
                                                a[index],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 20,
                                        width: 80,
                                        child: Text(
                                          b[index],
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.80),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      height: 27,
                      width: 261,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Featured Playlist",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      height: 200,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                      height: 85,
                                      width: 80,
                                      child: Container(
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(47, 48, 55, 0.55),
                                          backgroundImage: AssetImage("assets/f7.png"
                                          ),
                                          radius: 45,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 85,
                                        width: 80,
                                        color:
                                            Colors.black12.withOpacity(0.30)),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 85,
                                      width: 80,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "Seuiigi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                    )
                                  ]),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: 85,
                                      width: 80,
                                      child: Container(
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(47, 48, 55, 0.55),
                                          backgroundImage: AssetImage("assets/m6.png"),
                                          radius: 45,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 85,
                                      width: 80,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "Tatsuro",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                      height: 85,
                                      width: 80,
                                      child: Container(
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(47, 48, 55, 0.55),
                                          backgroundImage: AssetImage("assets/m3.png"),
                                          radius: 45,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 85,
                                      width: 80,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "Yoasobi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                    )
                                  ]),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 85,
                                    width: 80,
                                    child: Stack(children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(47, 48, 55, 0.55),
                                          backgroundImage:
                                              AssetImage("assets/p1.jpg"),
                                          radius: 45,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 85,
                                        width: 80,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "Wendy",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(20, 20)),
                                border: Border.all(
                                    color: Colors.white24.withOpacity(0.15),
                                    width: 1)),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 23,
                                  width: 100,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "City Pop",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto"),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 20,
                                  width: 100,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "233 songs",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 90,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(15, 15)),
                                        color: Colors.white70),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                                      child: Image.asset(
                                        "assets/p2.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      height: 27,
                      width: 261,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Perfect for  you",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 10),
                      height: 160,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: d.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          color: Colors.white),
                                      height: 130,
                                      width: 120,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(7, 7)),
                                          child: Image.asset(
                                            e[index],
                                            fit: BoxFit.cover,
                                          ))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 20,
                                    width: 100,
                                    child: FittedBox(
                                      child: Text(
                                        d[index],
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.80),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 13,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 80,
                      color: Color.fromRGBO(47, 48, 55, 0.35),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  "assets/caveman.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 23,
                                    width: 140,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "lhunanya(The Love Song)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Roboto"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 20,
                                    width: 100,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "The Caveman",
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Roboto"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.headphones_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 2,
                                width: 120,
                                color: Colors.deepPurpleAccent,
                              ),
                              Expanded(
                                child: Container(
                                  height: 2,
                                  color: Colors.white38,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      height: 27,
                      width: 261,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "New Release",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 10),
                      height: 160,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: f.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          color: Colors.white),
                                      height: 130,
                                      width: 120,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(7, 7)),
                                          child: Image.asset(
                                            f[index],
                                            fit: BoxFit.cover,
                                          ))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 20,
                                    width: 100,
                                    child: FittedBox(
                                      child: Text(
                                        d[index],
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.80),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 13,
                              )
                            ],
                          );
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              useLegacyColorScheme: true,
              onTap: _ontap,
              iconSize: 22,
              unselectedIconTheme: IconThemeData(
                size: 20,
                color: Colors.grey[600],
              ),
              selectedFontSize: 8,
              unselectedFontSize: 9,
              selectedItemColor: Colors.white,
              showUnselectedLabels: true,
              backgroundColor: Color.fromRGBO(22, 23, 23, 0.45),
              unselectedItemColor: Colors.grey[600],
              showSelectedLabels: true,
              unselectedLabelStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              selectedLabelStyle: TextStyle(
                  fontSize: 13,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
              landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
              items: const [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(
                      Icons.home_filled,
                    )),
                BottomNavigationBarItem(
                    label: "Search",
                    icon: Icon(
                      Icons.search_sharp,
                    )),
                BottomNavigationBarItem(
                  label: "Your Library",
                  icon: Icon(
                    Ionicons.library_outline,
                  ),
                ),
              ],
            )));
  }
}

class DottedBorderPainter extends CustomPainter {
  final bool isFirst;

  DottedBorderPainter({required this.isFirst});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = isFirst
          ? Color.fromRGBO(47, 48, 55, 1)
          : Colors.deepPurple
              .withOpacity(0.90) // Change color for the first circle
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final double radius = 30;
    final double dottedCircleRadius = radius + 0; // Adjust as needed

    final Path dottedPath = Path();
    dottedPath.addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: dottedCircleRadius));

    final PathMetrics pathMetrics = dottedPath.computeMetrics();
    final PathMetric pathMetric = pathMetrics.first;
    const double dashLength = 4;
    const double gapLength = 4;
    double distance = 0;

    while (distance < pathMetric.length) {
      final Path extractPath =
          pathMetric.extractPath(distance, distance + dashLength);
      canvas.drawPath(extractPath, paint);
      distance += dashLength + gapLength;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
