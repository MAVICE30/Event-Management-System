import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class EventText extends StatefulWidget {


  String desc= 'Event Desc';
  DateTime eventDatetime = DateTime.now();


  EventText({ required this.desc, required this.eventDatetime});


  @override
  _EventTextState createState() => _EventTextState();
}

class _EventTextState extends State<EventText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: ExpandableText(
              '${widget.desc}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ), expandText: 'See More',
              collapseText: 'See Less',
              linkColor: Colors.redAccent,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '${widget.eventDatetime.day}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
          Text(
            '${widget.eventDatetime.hour}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
        ],
      ),
    );
  }
}
