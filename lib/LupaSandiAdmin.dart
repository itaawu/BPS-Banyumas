import 'package:bps_project1/loginPageAdmin.dart';
import 'package:flutter/material.dart';

class LupaSandiAdmin extends StatefulWidget {
  @override
  _LupaSandiAdminState createState() => _LupaSandiAdminState();
}

class _LupaSandiAdminState extends State<LupaSandiAdmin> {
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
              "Lupa Kata Sandi",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
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
                        labelText: "Email Pribadi*",
                        hintText: "Silahkan Masukan Email Pribadi"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints.tightForFinite(
                            width: 1000, height: 40),
                      ),
                      // ConstrainedBox(
                      //     constraints:
                      //         BoxConstraints.tightFor(width: 1000, height: 40)),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPageAdmin()));
                        },
                        child: Text(
                          "Dapatkan Notifikasi",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
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
