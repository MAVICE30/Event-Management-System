import 'utils.dart';

class Eventis{
    final String id;
    final String name;
    final String type;
    final String organiser;
    final String topics;
    final String description;
    final String oneline;
    final String eventphoto;
    final DateTime eventDatetime;
    final int duration;
    final bool registerationRequired;
    final DateTime deadlineRegisteration;
    final int seatLimit;
    final bool isPaid;
    final int paidPrice;
    final int totalRegisterations;
    final String posterURL;

    const Eventis._(this.id,this.name,this.type,this.topics,this.totalRegisterations, this.organiser, this.description, this.oneline, this.eventphoto, this.eventDatetime, this.duration, this.registerationRequired, this.deadlineRegisteration, this.seatLimit, this.isPaid, this.paidPrice, this.posterURL);

    factory Eventis.fromJson(Map json){
      print(json.toString());
      final id = (getJSONValue(json, '_id', "ObjectId(\"\")")).replaceAll('ObjectId(\"','').replaceAll('\")','');
      final name = getJSONValue(json, "name", "");
      final topics = getJSONValue(json,'topics',"");
      final type = getJSONValue(json,'type',"");
      final organiser = getJSONValue(json,'organiser',"");
      final description = getJSONValue(json,'description',"");
      final oneline = getJSONValue(json,'oneline',"");
      final eventphoto = getJSONValue(json, "eventphoto", "");//json['eventphoto'];eventDatetime
      final eventDatetime = DateTime.parse(getJSONValue(json, 'eventDatetime', DateTime.now().toString()));
      final duration = getJSONValue(json,'duration',0);
      final registerationRequired = false;//getJSONValue(json,'registerationRequired',false);
      final deadlineRegisteration = DateTime.parse(getJSONValue(json, 'deadlineRegisteration', DateTime.now().toString()));
      final seatLimit = getJSONValue(json,'seatLimit',0);
      final isPaid = getJSONValue(json,'isPaid',false);
      final totalRegisterations = getJSONValue(json,'totalRegisterations',0);
      final paidPrice = getJSONValue(json,'paidPrice',0);
      final posterURL = getJSONValue(json,'posterURL',"");
      return Eventis._(id,name,type,topics,totalRegisterations, organiser, description, oneline, eventphoto, eventDatetime, duration, registerationRequired, deadlineRegisteration, seatLimit, isPaid, paidPrice, posterURL);
      //return Eventis._(id,name,type,organiser,topics,totalRegisterations,description,oneline,eventphoto,eventDatetime,duration,registerationRequired,deadlineRegisteration, seatLimit, isPaid, paidPrice, posterURL);
    }

}