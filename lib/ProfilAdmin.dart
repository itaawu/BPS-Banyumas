import 'package:bps_project1/HomeAdmin.dart';
import 'package:bps_project1/navBarAdmin.dart';
import 'package:flutter/material.dart';

class ProfilAdminPage extends StatefulWidget {
  const ProfilAdminPage({
    Key key,
  }) : super(key: key);

  @override
  _ProfilAdminPageState createState() => _ProfilAdminPageState();
}

class _ProfilAdminPageState extends State<ProfilAdminPage> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePageAdmin()));
            },
          ),
        ),
        bottomNavigationBar: NavBarAdmin());
  }
}
