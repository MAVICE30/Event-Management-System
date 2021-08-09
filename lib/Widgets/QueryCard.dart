import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class QueryCard extends StatefulWidget {
  const QueryCard({Key? key}) : super(key: key);

  @override
  _QueryCardState createState() => _QueryCardState();
}

class _QueryCardState extends State<QueryCard> {
  String dropdownValue = 'PHoEnix';

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
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            DropdownButton<String>(
              dropdownColor: Colors.grey.shade900,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.redAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['PHoEnix', 'CRUx', 'Embryo', 'DoPE']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),





              TextFormField(
                keyboardType: TextInputType.multiline,
                textCapitalization: TextCapitalization.sentences,
                maxLines: null,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter Query here',
                    labelStyle: TextStyle(color: Colors.grey)),
              ),

              SizedBox(
                height: 20,
              ),

              TextButton(onPressed: (){
                FocusScope.of(context).requestFocus(FocusNode());
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(

                        backgroundColor: Colors.grey.shade700,
                        content: Container(
                          child: Text(
                            'Query Sent !',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ))
                );
              },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.red.shade900),
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'SEND',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}






class CustomObject {
   String title='Test';
  final String imgUrl;

  CustomObject({
    required this.title,
    required this.imgUrl,
  });
}
