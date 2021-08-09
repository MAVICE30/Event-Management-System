//import 'package:ems_bits/FormCard.dart';
//import 'dart:html';

import 'package:ems_api_2/Screens/AnnouncementScreen.dart';
import 'package:ems_api_2/Screens/ProfilePage.dart';
import 'package:ems_api_2/Screens/QueryScreen.dart';
import 'package:ems_api_2/Widgets/AnnouncementCard.dart';
import 'package:ems_api_2/Widgets/CustomDrawer.dart';
import 'package:ems_api_2/Widgets/DrawerItem.dart';
import 'Widgets/OrgCard.dart';
import 'Widgets/QueryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/EventCard.dart';
import 'Screens/QueryScreen.dart';
import 'Screens/OrganisersScreen.dart';
import 'Screens/ProfilePage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //List<String> abcd = ['Programming', 'Arduino', 'Electronics'];
    //List<String> desc = [
     // 'Inductions will be taken for management non tech and consulting roles, interested people please register for the same',
     // 'Date: 5/07/21',
      //'Time: 7PM',
     // 'Location: Auditorium'
    //];

    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => MyApp(),
        '/b': (BuildContext context) => AnnouncementScreen(),
        '/c': (BuildContext context) => QueryScreen(),
        '/d': (BuildContext context) => OrganisersScreen(),
        '/e': (BuildContext context) => ProfilePage(),
      },
      debugShowCheckedModeBanner: false,
     // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
 // List<String> abcd = ['Programming', 'Arduino', 'Electronics'];
 // List<String> desc = [
 //   'Inductions will be taken for management non tech and consulting roles, interested people please register for the same',
 //   'Date: 5/07/21',
 //   'Time: 7PM',
 //   'Location: Auditorium'
 // ];

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EventCard> cards = [
      EventCard(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('EMS BPHC') ,),
      drawer: CustomDrawer(),
      backgroundColor: Colors.green[50],
      body: ListView(children: cards,) 
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
