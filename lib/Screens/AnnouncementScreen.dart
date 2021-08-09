import 'package:ems_api_2/Screens/QueryScreen.dart';
import 'package:ems_api_2/Widgets/AnnouncementCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Widgets/CustomDrawer.dart';
import '../main.dart';
import 'QueryScreen.dart';
import 'OrganisersScreen.dart';

class AnnouncementScreen extends StatelessWidget {
  //const AnnouncementScreen({Key? key}) : super(key: key);

  List<AnnouncementCard> announcementCards = [
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date'),
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date'),
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date'),
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date'),
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date'),
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date'),
    AnnouncementCard(eventName: 'eventName', eventAnnouncement: 'eventAnnouncement', date: 'date')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => MyApp(),
          '/b': (BuildContext context) => AnnouncementScreen(),
          '/c': (BuildContext context) => QueryScreen(),
          '/d': (BuildContext context) => OrganisersScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
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
                    child: SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          'Announcements',
                          style: TextStyle(
                              fontSize: 30,
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
                        children: announcementCards,
                      );
                    }, childCount: 1))
              ],
            )

        )
    );
  }
}
