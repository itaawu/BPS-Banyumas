import 'package:flutter/material.dart';

class BoardingPage extends StatefulWidget {
  @override
  _BoardingPageState createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
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
                  height: 200,
                  width: 250,
                ),
                Text(
                  "Badan Pusat Statistik Kabupaten Banyumas",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
