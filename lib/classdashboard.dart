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
          Card(
            margin: EdgeInsets.all(4.0),
            color: Color(0xffe0e0e0),
            shadowColor: Color(0xff000000),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Introduction to Computing'),
                  subtitle: Text('ITMC101'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      child: Text(
                        "Generate Code",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    //const SizedBox(width: 8),
                    MaterialButton(
                      child: Text(
                        "Assign Beadle",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    //const SizedBox(width: 8),
                  ],
                ),
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
