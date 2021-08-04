//import 'package:ems_bits/FormCard.dart';
import 'package:ems_bphc/Screens/AnnouncementScreen.dart';
import 'package:ems_bphc/Screens/ProfilePage.dart';
import 'package:ems_bphc/Screens/QueryScreen.dart';
import 'package:ems_bphc/Widgets/AnnouncementCard.dart';
import 'package:ems_bphc/Widgets/CustomDrawer.dart';
import 'package:ems_bphc/Widgets/DrawerItem.dart';
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
    List<String> abcd = ['Programming', 'Arduino', 'Electronics'];
    List<String> desc = [
      'Inductions will be taken for management non tech and consulting roles, interested people please register for the same',
      'Date: 5/07/21',
      'Time: 7PM',
      'Location: Auditorium'
    ];

    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => MyApp(),
        '/b': (BuildContext context) => AnnouncementScreen(),
        '/c': (BuildContext context) => QueryScreen(),
        '/d': (BuildContext context) => OrganisersScreen(),
        '/e': (BuildContext context) => ProfilePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> abcd = ['Programming', 'Arduino', 'Electronics'];
  List<String> desc = [
    'Inductions will be taken for management non tech and consulting roles, interested people please register for the same',
    'Date: 5/07/21',
    'Time: 7PM',
    'Location: Auditorium'
  ];

  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EventCard> cards = [
      EventCard(eventName: 'OpenCV Workshop', clubName: 'phoenix', chipLabel: 'OpenCV', isPaid: true, posterUrl: 'https://scontent.fhyd2-1.fna.fbcdn.net/v/t1.6435-9/162820477_1044686136055796_7993008410852406365_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=825194&_nc_ohc=HDrAfjSiBCMAX-Owghz&tn=gXVJA7aJwjQkfOJ_&_nc_ht=scontent.fhyd2-1.fna&oh=833cd8eac784553f96513e628633892f&oe=60EF41E6', eventsDetails: ['One line describing about the event','Honing your programming skills during this never-ending pandemic? Are you a computer geek wanting to learn the cool, enticing tech behind image analysis? Or just a python newbie, wanting to exploring the vast ocean of coding? Then this is the right event for you!\nPHoEnix presents OpenCV with Python Workshop to take you from basics to advanced topics of OpenCV. OpenCV stands for Open-Source Computer Vision Library and is used for all sorts',
      'Date: swdnwjw', 'Time: kfscjnk', 'Location: wnwkjdn'], amt: 250),
    ];

    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            backgroundColor: HexColor('#32a89e'),
            expandedHeight: 200,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.info),
                color: Colors.white,
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'EMS BPHC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.asset('images/bitspilani.png'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 8, bottom: 0),
              child: SizedBox(
                height: 30,
                child: Center(
                  child: Text(
                    'Upcoming Events',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            // return EventCard(
            //     eventName: 'eventName', chipLabels: abcd, eventDetails: desc);
            return Column(
              children: cards,
            );
          }, childCount: 1))
        ],
      ),
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
