import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Widgets/CustomDrawer.dart';
import '../Widgets/OrgCard.dart';
import 'QueryScreen.dart';
import 'package:ems_bphc/main.dart';
import 'AnnouncementScreen.dart';


class OrganisersScreen extends StatelessWidget {
  const OrganisersScreen({Key? key}) : super(key: key);

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
                          'Queries',
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
                        children: [
                          OrgCard(clubName: 'CRUx', clubDesc: 'Crux is the Programming and Computing club for BITS Hyderabad. From a small club of few passionate coders since it\'s inception in 2010, we have grown by an enormous amount. During this time, we have aimed to kindle a passion for computers and better the programming culture of the students of our college. We also strive to make things on campus easier and more convenient via the means of code.', clubImage: 'https://avatars.githubusercontent.com/u/11003211?s=200&v=4'),
                          OrgCard(clubName: 'Embryo', clubDesc: 'Conceived by the alumni from BITS Pilani in 2006, BITS Embryo has developed into a transformation in classroom education. BITS Embryo is a project to foster strong collaboration of BITS students and BITS faculty with the alumni of BITS Pilani. Via on-line, live and interactive lectures, run by students and faculties of BITS-Pilani, BITS Embryo has successfully conducted more than 200 lectures in areas as wide ranging as Entrepreneurship, Black Holes, Solar Cells, Science of Smell, Naxalism, Rain water harvesting,Storage Networks, PSOCs, Process Control.', clubImage: 'https://github.com/aditya3103/test/blob/main/embryo%20logo%20transparent%20background.png?raw=true'),
                          OrgCard(clubName: 'PHoEnix', clubDesc: 'We at PHoEnix, conduct events related to our core field, publish articles and participate in competitions. Enthusiastic students are given a platform to showcase their skills and technical expertise.', clubImage: 'https://swd.bits-hyderabad.ac.in/phoenix/static/media/logo.5ab6749d.png')
                        ],
                      );
                    }, childCount: 1))
              ],
            )

        )
    );
  }
}
