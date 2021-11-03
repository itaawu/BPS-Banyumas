import 'package:bps_project1/HomeAdmin.dart';
import 'package:bps_project1/ProfilAdmin.dart';
import 'package:flutter/material.dart';

class NavBarAdmin extends StatefulWidget {
  NavBarAdmin({Key key}) : super(key: key);

  @override
  NavBarAdminState createState() => NavBarAdminState();
}

class NavBarAdminState extends State<NavBarAdmin> {
  int selectedIndex = 0;
  final widgetOptions = [
    Text('Home'),
    Text('Akun'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
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
                      MaterialPageRoute(builder: (context) => HomePageAdmin()));
                },
              ),
              IconButton(
                icon: Icon(Icons.account_circle, color: Colors.black, size: 30),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilAdminPage()));
                },
              ),
            ],
          )),
    );
  }
}
