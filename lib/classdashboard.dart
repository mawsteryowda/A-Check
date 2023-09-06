// ignore: prefer_const_constructors
import 'package:a_check/sidedrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

enum SampleItem { itemOne, itemTwo }

class ClassDashboard extends StatelessWidget {
  const ClassDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        centerTitle: false,
        backgroundColor: Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      drawer: const SideDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(31, 128, 128, 128),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "bababoey",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
                Text("mhmm"),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        children: [
          SpeedDialChild(
              child: Icon(Icons.smartphone),
              label: "SmartPhone",
              onTap: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ),
                );*/
              }),
          SpeedDialChild(
            child: Icon(Icons.camera),
            label: "IP Camera",
            /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ),
                );*/
          ),
        ],
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
