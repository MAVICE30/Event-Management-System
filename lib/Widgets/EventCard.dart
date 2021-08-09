import 'EventText.dart';
import 'EventChip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ems_api_2/main.dart';
import '../api.dart';
import '../event_is.dart';

class EventCard extends StatefulWidget {

  final EventsApi api = EventsApi();

  @override
  EventCardState createState() => EventCardState();
  }

class EventCardState extends State<EventCard> {
  List<Eventis> events = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  void _loadEvents([bool showSpinner = false]) {
    if (showSpinner) {
      setState(() {
        loading = true;
      });
    }

    widget.api.getEvents().then((data) {
      setState(() {
        events = data;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //appBar: AppBar(
        //title: Text(widget.title),
        //centerTitle: true,
      //),
      child: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : EventListing(
              events: events,
            ),
    );
  }
}

class EventListing extends StatelessWidget {
  final List<Eventis> events;
 
  EventListing({required this.events});

  @override
  Widget build(BuildContext context) {
    /*return ListView.builder(
      itemCount: events.length,
      itemBuilder: (_, index){
      
      return eventOrganizer(events[index]);
    });
    */
//     return ListView
// /*delegate: SliverChildBuilderDelegate(
//     (BuildContext context, int index) {
//       return eventOrganizer(events[index]);
//     },
//  childCount: events.length,
//  */
  

//     (children: [
//       ...events.map((event)=>this.eventOrganizer(event)).toList(),
//       SizedBox(height: 70)
//     ]);
    
    return SizedBox(
          height: 1200.0,
          child: ListView(
            children: [
              ...events.map((event)=>this.eventOrganizer(event)).toList()
            ]
          )
      );
  }

  Widget eventOrganizer(Eventis event){
    
    if("aa"=="ab"){
      return Text(
        event.name, 
        style: TextStyle(
          fontSize: 20, 
          
        ),
      );
    }

    List<EventChip> eventChips = [
      EventChip(chipName: 'Paid', chipColor: Colors.red),
      EventChip(chipName: '${event.paidPrice}', chipColor: Colors.yellowAccent),
    ];

    for(int i=0; i<event.topics.length; ++i){
      eventChips.add(EventChip(chipName: '${event.topics[i]}', chipColor: Colors.orange));
    }

    if (event.isPaid == false) {
      eventChips.first.chipName = 'Free';
      eventChips.removeAt(1);
    }



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
          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text('${event.name} (${event.type})',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1)),
                    ),
                    Container(
                      height: 50,
                      child:
                          Expanded(child: Image.asset('images/${event.organiser}.png')),
                    )
                  ],
                ),
              ),
              Row(
                children: eventChips,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Text(
                      '${event.oneline}',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(child: Image(image: NetworkImage('${event.posterURL}'))),
              SizedBox(
                height: 20,
              ),
              EventText(desc: event.description, eventDatetime: event.eventDatetime),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            primary: Colors.green,
                            onPrimary: Colors.black),
                        label: Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        icon: Icon(Icons.add),
                      ),
                    ),
                    // ElevatedButton.icon(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //       //padding: EdgeInsets.all(8),
                    //       // padding:
                    //       padding:
                    //           EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    //       primary: Colors.blue,
                    //       onPrimary: Colors.black),
                    //   label: Text(
                    //     'View More',
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold, fontSize: 18),
                    //   ),
                    //   icon: Icon(Icons.remove_red_eye),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}