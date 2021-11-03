import 'package:bps_project1/HomeAdmin.dart';
import 'package:bps_project1/LupaSandiAdmin.dart';
import 'package:flutter/material.dart';

class LoginPageAdmin extends StatefulWidget {
  @override
  _LoginPageAdminState createState() => _LoginPageAdminState();
}

class _LoginPageAdminState extends State<LoginPageAdmin> {
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
            Image.asset(
              "assets/img/bps.png",
              height: 100,
              width: 150,
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
                        labelText: "Email",
                        hintText: "Silahkan Masukan Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1)),
                      labelText: "Kata Sandi",
                      hintText: "Silahkan Masukan Kata Sandi",
                    ),
                    obscureText: true,
                  ),
                  Row(children: [
                    TextButton(
                        child: Text('Lupa Kata Sandi?'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LupaSandiAdmin()));
                        })
                  ]),
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageAdmin()));
                          },
                          child: Text(
                            "Masuk",
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
            )
          ],
        ),
      ),
    );
  }
}
