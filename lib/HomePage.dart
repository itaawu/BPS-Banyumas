import 'package:bps_project1/Akun_Page.dart';
import 'package:bps_project1/Keluar_Page.dart';
import 'package:bps_project1/Masuk_page.dart';
import 'package:bps_project1/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    Text("Home1"),
    LoginPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: _widgetOptions.elementAt(_currentIndex),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  tooltip: "Perizinan Masuk",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MasukPage()));
                  },
                ),
                Text(
                  "Perizinan Masuk",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.exit_to_app),
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
                  children: [
                    IconButton(
                      icon: Icon(Icons.exit_to_app),
                      tooltip: "COBA AKUN",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AkunPage()));
                      },
                    ),
                    Text(
                      "COBA AKUN",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_backup_restore_rounded),
              label: "Riwayat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Akun"),
        ],
        onTap: _onItemTap,
        fixedColor: Colors.black,
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
