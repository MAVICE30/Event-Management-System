import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class EventText extends StatefulWidget {


  List<String> eventDetails=['Desc', 'date', 'time', 'location'];


  EventText({ required List<String> eventDetail }){

    this.eventDetails= eventDetail;
  }


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
              '${widget.eventDetails.elementAt(1)}',
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
            '${widget.eventDetails.elementAt(2)}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
          Text(
            '${widget.eventDetails.elementAt(3)}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
          Text(
            '${widget.eventDetails.elementAt(4)}',
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
