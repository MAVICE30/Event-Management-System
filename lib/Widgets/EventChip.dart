import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EventChip extends StatefulWidget {
  String chipName = 'Test';
  Color chipColor= Colors.red;


  EventChip({required String chipName, required Color chipColor }) {
    this.chipName = chipName;
    this.chipColor=chipColor;
  }

  @override
  _EventChipState createState() => _EventChipState();
}

class _EventChipState extends State<EventChip> {
//(key: key);
  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
      child: Chip(
        labelPadding: EdgeInsets.symmetric(vertical: 0),
        backgroundColor: widget.chipColor ,
        label: Text(
          '${widget.chipName}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
