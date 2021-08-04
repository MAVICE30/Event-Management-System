//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DrawerItem.dart';
import 'package:ems_bphc/main.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: Container(
        color: Colors.black,
        //color: Colors.redAccent.shade100,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 225,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.redAccent])),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'My Profile',
                          style:
                          TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      // SizedBox(
                      //   height: 4,
                      // ),
                      Center(
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/e');
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/phoenix.png'),
                            radius: 50,
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Column(
              children: [
                DrawerItem(itemName: 'Dashboard', icons: Icons.dashboard,

                ),
                DrawerItem(
                    itemName: 'Announcements', icons: Icons.announcement),
                DrawerItem(itemName: 'Organisers', icons: Icons.groups),
                DrawerItem(itemName: 'Drop A Query', icons: Icons.report),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DrawerItem(
                    itemName: 'Logout', icons: Icons.power_settings_new)
              ],
            )
          ],
        ),
      ),
    );
  }
}
