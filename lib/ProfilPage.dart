import 'package:bps_project1/Akun_Page.dart';
import 'package:bps_project1/HomePage.dart';
import 'package:bps_project1/login_page.dart';
import 'package:bps_project1/navBar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key key,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfffffff),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      bottomNavigationBar: NavBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Profil",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/bps.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5, left: 100),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20), bottom: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Nama Lengkap*",
                          hintText: "Silahkan Masukan Nama Lengkap"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Email*",
                          hintText: "Silahkan Masukan Email"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "NIP",
                        hintText: "Silahkan Masukan NIP",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Bidang",
                        hintText: "Silahkan Masukan Bidang",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 300, height: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AkunPage()));
                    },
                    child: Text(
                      "Edit Profil",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 300, height: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Keluar",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
