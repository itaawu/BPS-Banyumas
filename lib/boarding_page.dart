import 'dart:async';

import 'package:bps_project1/login_page.dart';
import 'package:flutter/material.dart';

class BoardingPage extends StatefulWidget {
  @override
  _BoardingPageState createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 110,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/bps.png",
                  height: 180,
                  width: 180,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                ),
                Text(
                  "Badan Pusat Statistik",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Kabupaten Banyumas",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
