import 'package:bps_project1/login_page.dart';
import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Daftar",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        labelText: "Nama Lengkap*",
                        hintText: "Silahkan Masukan Nama Lengkap"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1)),
                      labelText: "Email*",
                      hintText: "Silahkan Masukan Email",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1)),
                          labelText: "NIP*",
                          hintText: "Silahkan Masukan NIP"),
                      obscureText: true),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        labelText: "Kata Sandi*",
                        hintText: "Silahkan Masukan Kata Sandi"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 1000, height: 40),
                        child: ElevatedButton(
                          child: Text(
                            "Daftar",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
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
            )
          ],
        ),
      ),
    );
  }
}
