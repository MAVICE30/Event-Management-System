import 'dart:ffi';

class Useris{
  final String branch;
  final Array preferenceOrder;
  final bool isAdmin;
  final bool isProfile;
  final String name;
  final String email;
  final int batch;
  final String profileURL;
  final int googleID;

  const Useris._(this.branch,this.batch,this.email,this.googleID,this.isAdmin,this.isProfile,this.name,this.preferenceOrder,this.profileURL);

  factory Useris.fromJson(Map json){
    final branch = json['branch'];
    final preferenceOrder = json['preferenceOreder'];
    final isAdmin = json['isAdmin'];
    final isProfile = json['isProfile'];
    final name = json['name'];
    final email = json['email'];
    final batch = json['batch'];
    final profileURL = json['profileURL'];
    final googleID = json['googleID'];

    return Useris._(branch,preferenceOrder,isAdmin,isProfile,name,email,batch,profileURL,googleID );
  }
}