import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Widgets/QueryCard.dart';
import 'package:ems_bphc/main.dart';
import 'AnnouncementScreen.dart';
import '../Widgets/CustomDrawer.dart';
import 'OrganisersScreen.dart';
import '../Widgets/TestWidget.dart';

class QueryScreen extends StatelessWidget {
  const QueryScreen({Key? key}) : super(key: key);

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

      home: Test(),
        // home: Scaffold(
        //     drawer: CustomDrawer(),
        //     backgroundColor: Colors.black,
        //     body: CustomScrollView(
        //       slivers: [
        //         SliverAppBar(
        //           pinned: false,
        //           backgroundColor: HexColor('#32a89e'),
        //           expandedHeight: 200,
        //           actions: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(Icons.settings),
        //                   color: Colors.white),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(Icons.info),
        //               color: Colors.white,
        //             )
        //           ],
        //           flexibleSpace: FlexibleSpaceBar(
        //             title: Text(
        //               'EMS BPHC',
        //               style: TextStyle(
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             background: Image.asset('images/bitspilani.png'),
        //           ),
        //         ),
        //         SliverToBoxAdapter(
        //           child: Container(
        //             child: SizedBox(
        //               height: 30,
        //               child: Center(
        //                 child: Text(
        //                   'Queries',
        //                   style: TextStyle(
        //                       fontSize: 30,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.white),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //         SliverList(
        //             delegate:
        //             SliverChildBuilderDelegate((BuildContext context, int index) {
        //               // return EventCard(
        //               //     eventName: 'eventName', chipLabels: abcd, eventDetails: desc);
        //               return Container(child: QueryCard());
        //             }, childCount: 1))
        //       ],
        //     )
        //
        // )
    );
  }
}
