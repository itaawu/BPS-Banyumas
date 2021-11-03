import 'package:bps_project1/navBar.dart';
import 'package:flutter/material.dart';

class KeluarPage extends StatefulWidget {
  @override
  _KeluarPageState createState() => _KeluarPageState();
}

class _KeluarPageState extends State<KeluarPage> {
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
              "Perizinan Keluar",
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
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        labelText: "NIP*",
                        hintText: "Silahkan Masukan NIP"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1)),
                      labelText: "Tanggal dan Waktu*",
                      hintText: "Silahkan Masukan Tanggal dan Waktu",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1)),
                      labelText: "Keterangan*",
                      hintText: "Silahkan Masukan Keterangan",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1)),
                          labelText: "Waktu Kembali*",
                          hintText: "Silahkan Masukan Waktu Kembali"),
                      obscureText: true),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 1000, height: 40),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Masukkan",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
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
