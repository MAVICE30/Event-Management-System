class Announceis{
  final DateTime date;
  final String description;
  final String organiser;

  const Announceis._(this.date,this.description,this.organiser);

  factory Announceis.fromJson(Map json){
    final date = json['date'];
    final description = json['description'];
    final organiser = json['organiser'];

    return Announceis._(date,description,organiser);
  }

}