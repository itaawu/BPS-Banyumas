import 'package:bps_project1/Keluar_Page.dart';
import 'package:bps_project1/Masuk_page.dart';
import 'package:bps_project1/navBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Material MyBangru(String icon, String text, int color) {
    return Material(
      color: Colors.white,
      elevation: 15.0,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,
                        style: TextStyle(
                          color: Color(color),
                          fontSize: 20.0,
                        ))),
                Material(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('img'),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      backgroundColor: Colors.white,
      body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: <Widget>[
            Container(
                child: Material(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MasukPage()));
                  },
                  child:
                      MyBangru("img/download.png", "Izin Masuk", 0xff000000)),
            )),
            Container(
                child: Material(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => KeluarPage()));
                  },
                  child: MyBangru("img/Upload.png", "Izin Keluar", 0xff000000)),
            )),
          ],
        );
      }),
    );
  }
}
