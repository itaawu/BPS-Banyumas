import 'package:bps_project1/ProfilPage.dart';
import 'package:bps_project1/navBar.dart';
import 'package:flutter/material.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profil",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                          bottom: Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Kata Sandi Lama*",
                              hintText: "Silahkan Masukan Kata Sandi Lama*"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Kata Sandi Baru*",
                            hintText: "Silahkan Masukan Kata Sandi Baru*",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Ubah Bidang*",
                            hintText: "Silahkan Masukan Bidang Baru*",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 300, height: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Text(
                      "Simpan Perubahan",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
