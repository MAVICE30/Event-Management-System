import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:expandable_text/expandable_text.dart';

class AnnouncementCard extends StatelessWidget {
  String eventName;
  String eventAnnouncement;
  String date;

  AnnouncementCard({required this.eventName, required this.eventAnnouncement, required this.date}) {}


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(8),
        color: Colors.grey.shade900,
        shadowColor: Colors.blue,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding:  EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Robo Soccer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 32
                    ),
                  ),

                  Column(
                    children: [
                      Text(
                        '20/08/21',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                        ),
                      ),
                      Text(
                        '8:37 PM',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              ExpandableText(
                  'Competition is going to start in another 20 minutes, make it quick and arrive at the auditorium as soon as possible to avoid any delays, make sure you have got you rbest project for it, Thanks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  expandText: 'See more',
                collapseText: 'See less',
              )
            ],
          ),
        ),
      ),
    );
  }
}
