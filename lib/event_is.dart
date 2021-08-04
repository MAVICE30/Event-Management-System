class Eventis{
    final String name;
    final String organiser;
    final String description;
    final String oneline;
    final String eventphoto;
    final DateTime eventDatetime;
    final int duration;
    final String registerationRequired;
    final DateTime deadlineRegisteration;
    final int seatLimit;
    final bool isPaid;
    final int paidPrice;
    final String posterURL;

    const Eventis._(this.name, this.organiser, this.description, this.oneline, this.eventphoto, this.eventDatetime, this.duration, this.registerationRequired, this.deadlineRegisteration, this.seatLimit, this.isPaid, this.paidPrice, this.posterURL);

    factory Eventis.fromJson(Map json){
      final name = json['name'];
      final organiser = json['organiser'];
      final description = json['description'];
      final oneline = json['oneline'];
      final eventphoto = json['eventphoto'];
      final eventDatetime = json['eventDatetime'];
      final duration = json['duration'];
      final registerationRequired = json['registerationRequired'];
      final deadlineRegisteration = json['deadlineRegisteration'];
      final seatLimit = json['seatLimit'];
      final isPaid = json['isPaid'];
      final paidPrice = json['paidPrice'];
      final posterURL = json['posterURL'];

      return Eventis._(name,organiser,description,oneline,eventphoto,eventDatetime,duration,registerationRequired,deadlineRegisteration, seatLimit, isPaid, paidPrice, posterURL);
    }
}