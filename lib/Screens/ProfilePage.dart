import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Widgets/QueryCard.dart';
import 'package:ems_bphc/main.dart';
import 'AnnouncementScreen.dart';
import '../Widgets/CustomDrawer.dart';
import 'OrganisersScreen.dart';

class ProfilePage extends StatefulWidget {
  String mailSuffix = '@hyderabad.bits-pilani.ac.in';

  //const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {








  @override
  Widget build(BuildContext context) {
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 30,
                    child: Center(
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              // return EventCard(
              //     eventName: 'eventName', chipLabels: abcd, eventDetails: desc);
              return Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/phoenix.png'),
                        backgroundColor: Colors.black,
                        radius: 40,
                        foregroundColor: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        margin: EdgeInsets.all(8),
                        color: Colors.grey.shade900,
                        shadowColor: Colors.blue,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Name: Aditya Sridasyam', style: TextStyle(color: Colors.white, fontSize: 16),),

                              Text('Email ID: f20200508${widget.mailSuffix}', style: TextStyle(color: Colors.white, fontSize: 16),),

                              Text('Branch: EEE', style: TextStyle(color: Colors.white,fontSize: 16),),

                              Text('Batch: 2020', style: TextStyle(color: Colors.white,fontSize: 16),),

                            ],
                          ),
                        ),
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.all(8),
                                    color: Colors.grey.shade900,
                                    shadowColor: Colors.blue,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                    child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                            'Events Attended',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                color: Colors.white
                                            ),
                                        ),
                                          ),
                                          Text('data', style: TextStyle(color: Colors.white),)
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  margin: EdgeInsets.all(8),
                                  color: Colors.grey.shade900,
                                  shadowColor: Colors.blue,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                      children: [Text(
                                        'Events Attended',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.white
                                        ),
                                      ),
                                        Text('data', style: TextStyle(color: Colors.white),)
                                      ]
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  margin: EdgeInsets.all(8),
                                  color: Colors.grey.shade900,
                                  shadowColor: Colors.blue,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                      children: [Text(
                                        'Events Attended',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.white
                                        ),
                                      ),
                                        Text('data', style: TextStyle(color: Colors.white),)
                                      ]
                                  ),
                                ),
                              ),
                              Container(
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  margin: EdgeInsets.all(8),
                                  color: Colors.grey.shade900,
                                  shadowColor: Colors.blue,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                      children: [Text(
                                        'Events Attended',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.white
                                        ),
                                      ),
                                        Text('data', style: TextStyle(color: Colors.white),)
                                      ]
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }, childCount: 1))
          ],
        ));
  }
}
