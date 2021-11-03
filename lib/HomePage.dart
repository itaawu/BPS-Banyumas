import 'package:bps_project1/Keluar_Page.dart';
import 'package:bps_project1/Masuk_page.dart';
import 'package:bps_project1/navBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Home",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.upload, color: Colors.red, size: 50),
                      tooltip: "Perizinan Keluar",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KeluarPage()));
                      },
                    ),
                    Text(
                      "Perizinan Keluar",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.download, color: Colors.green, size: 50),
                      tooltip: "Perizinan Masuk",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MasukPage()));
                      },
                    ),
                    Text(
                      "Perizinan Masuk",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
