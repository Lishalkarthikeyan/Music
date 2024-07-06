import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayMusic extends StatefulWidget {
  const PlayMusic({super.key});

  @override
  State<PlayMusic> createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Background image with blur effect
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/starboy.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 30.0),
                child: Container(
                  color: Colors.black.withOpacity(0.50), // Adjust opacity as needed
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 30.0),
              child: Container(
              ),
            ),
            // Foreground content
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 100,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Transform.rotate(
                                angle: 90 * 3.1415926535897932 / 180, // Rotate by 90 degrees
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white60,
                                  size: 20,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 140,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Now playing",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto"),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 140,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Playlist",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto"),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "\"CityPop\"",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.menu,
                                color: Colors.white60,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    margin: EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      child: Image.asset("assets/starboy.jpg", fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 90,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Row(
                          children: [
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
                                      "Starboy",
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
                                      "The Weeknd",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              FontAwesomeIcons.share,
                              color: Colors.white54,
                              size: 18,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.white54,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 2,
                                  width: 180,
                                  color: Colors.deepPurpleAccent.withOpacity(1),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurpleAccent,
                                      border: Border.all(width: 2, color: Colors.white)),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    color: Colors.white38,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "1.25",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "3.15",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          height: 20,
                          width: 50,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Next: ",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 20,
                          width: 150,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Shake it Off(Tailor Swift)",
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 80,
                    color: Colors.black,
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.panorama_horizontal_outlined,
                          color: Colors.white70,
                          size: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 2,
                              color: Colors.white,
                            ),
                            Container(
                              height: 25,
                              width: 23,
                              child: Transform.rotate(
                                angle: 3.14, // 180 degrees in radians
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.pause_circle_filled_outlined,
                          color: Colors.white,
                          size: 80,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 23,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 2,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Icon(
                          Icons.get_app_rounded,
                          color: Colors.white70,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 100,
                    color: Colors.black,
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.ac_unit_sharp,
                          color: Colors.white54,
                          size: 25,
                        ),
                        SizedBox(width: 40),
                        Icon(
                          Icons.alarm_outlined,
                          color: Colors.white54,
                          size: 25,
                        ),
                        SizedBox(width: 40),
                        Icon(
                          Icons.mic_external_on_outlined,
                          color: Colors.white54,
                          size: 25,
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white54,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
