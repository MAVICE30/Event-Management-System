import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class OrgCard extends StatelessWidget {

  String clubName='PHoEnix';
  String clubDesc='Random Description';
  String clubImage='https://avatars.githubusercontent.com/u/11003211?s=200&v=4';
  List <String> socialHandles = ['instaURL', 'fbURL', 'LinkedInURL'];

  
   OrgCard({required this.clubName, required this.clubDesc, required this.clubImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(8),
        color: Colors.grey.shade900,
        shadowColor: Colors.red,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    image: NetworkImage(
                        '$clubImage'),
                    child: InkWell(
                      onTap: (){},
                    ),
                    fit: BoxFit.cover,
                    height: 240,
                  ),
                  Text(
                    '$clubName',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),


                ],
              ),
              SizedBox(
                height: 30,
              ),

              ExpandableText(
                  '$clubDesc',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                  expandText: 'See More',
                collapseText: 'See Less',
                maxLines: 1,

              ),


              SizedBox(
                height: 20,
              ),
              // Row(
              //   children: [
              //
              //   ],
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      onPressed: () {  },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png'
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade900,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      onPressed: () {  },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://www.freepnglogos.com/uploads/instagram-logo-png-transparent-0.png'
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade900,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      onPressed: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        radius: 18,
                        backgroundImage: NetworkImage(
                            'https://image.flaticon.com/icons/png/512/174/174857.png'
                        ),
                      ),
                    ),
                  ),
                ],
              )
              // Icon(Icons, color: Colors.blueAccent,),
              // Icon(Icons.facebook, color: Colors.blue,),
              // Icon(Icons.facebook, color: Colors.blue,),
            ],
          ),
        ),
      ),
    );
  }
}
