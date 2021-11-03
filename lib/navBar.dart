import 'package:bps_project1/HomePage.dart';
import 'package:bps_project1/ProfilPage.dart';
import 'package:bps_project1/RiwayatPage.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final widgetOptions = [
    Text('Home'),
    Text('Riwayat'),
    Text('Akun'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.black, size: 30),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              IconButton(
                icon: Icon(Icons.settings_backup_restore_rounded,
                    color: Colors.black, size: 30),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RiwayatPage()));
                },
              ),
              IconButton(
                icon: Icon(Icons.account_circle, color: Colors.black, size: 30),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              )
            ],
          )),
    );
  }
}
