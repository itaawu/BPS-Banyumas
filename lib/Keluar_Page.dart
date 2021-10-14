import 'package:flutter/material.dart';

class KeluarPage extends StatefulWidget {
  @override
  _KeluarPageState createState() => _KeluarPageState();
}

class _KeluarPageState extends State<KeluarPage> {
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
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        labelText: "NIP*",
                        hintText: "Silahkan Masukan NIP"),
                  ),
                  SizedBox(
                    height: 20,
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
                    height: 20,
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
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1)),
                          labelText: "Waktu Kembali*",
                          hintText: "Silahkan Masukan Waktu Kembali"),
                      obscureText: true),
                  SizedBox(
                    height: 120,
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_backup_restore_rounded),
              label: "Riwayat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Akun"),
        ],
        fixedColor: Colors.black,
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
