import 'package:bps_project1/DaftarPage.dart';
import 'package:bps_project1/HomePage.dart';
import 'package:bps_project1/LupaSandiPage.dart';
import 'package:bps_project1/loginPageAdmin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfffffff),
        leading: TextButton(
          child: Text('Login Admin'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPageAdmin()));
          },
        ),
      ),
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
                                  builder: (context) => LupaSandiPage()));
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
                                    builder: (context) => HomePage()));
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
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Tidak Punya Akun ?",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 1000, height: 40),
                        child: ElevatedButton(
                          child: Text(
                            'Daftar',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DaftarPage()));
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
