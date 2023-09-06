// ignore_for_file: prefer_const_constructors

import 'package:a_check/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:a_check/main.dart';
import 'package:a_check/classdashboard.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ])));
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage("assets/avatar.png"),
            ),
            SizedBox(height: 12),
            Text(
              'Franz Olabyo',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
            Text(
              'folabyo@gbox.adnu.edu.ph',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            )
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(children: [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Log Out'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainApp()),
            );
          },
        ),
      ]);
}
