import 'package:bps_project1/LupaSandiPage.dart';
import 'package:bps_project1/navBarAdmin.dart';
import 'package:flutter/material.dart';

class HomePageAdmin extends StatefulWidget {
  @override
  _HomePageAdminState createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarAdmin(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Home Admin",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
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
                        labelText: "Username",
                        hintText: "Silahkan Masukan Username"),
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
