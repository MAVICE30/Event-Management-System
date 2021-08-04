import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class DropDownItem extends StatelessWidget {
  String clubName;
  String clubLogo;
   DropDownItem({required this.clubName, required this.clubLogo});
      //: super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$clubName',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),
          ),
          Image(image: NetworkImage(
            '$clubLogo'
          ))
        ],
      )
    );
  }
}
