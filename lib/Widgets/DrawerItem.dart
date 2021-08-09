//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ems_api_2/main.dart';

class DrawerItem extends StatelessWidget {
  String itemName = 'itemName';
  IconData icons = Icons.dashboard;

  DrawerItem({required String itemName, required IconData icons}) {
    this.itemName = itemName;
    this.icons = icons;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.redAccent,
            onTap: (){
              switch(this.itemName){
                case 'Dashboard': Navigator.of(context).pushNamed('/a');
                break;
                case 'Announcements': Navigator.of(context).pushNamed('/b');
                break;
                case 'Drop A Query': Navigator.of(context).pushNamed('/c');
                break;
                case 'Organisers': Navigator.of(context).pushNamed('/d');
                break;
                case 'My Profile': Navigator.of(context).pushNamed('/e');
                break;
              }
            },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
            children: [
                Icon(
                  icons,
                  size: 30,
                  color: CupertinoColors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$itemName',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                )
            ],
          ),
              ),),
          Divider(
            height: 12,
            indent: 50,
            endIndent: 50,
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
