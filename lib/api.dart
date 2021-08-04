import 'package:dio/dio.dart';
import 'event_is.dart';
import 'announce_is.dart';
import 'user_is.dart';

class EventsApi {
  final _dio = Dio(BaseOptions(baseUrl: 'http://localhost:4041/'));

  Future<List<Eventis>> getEvents() async {
    final response = await _dio.get('');
    return (response.data['events'] as List)
        .map<Eventis>((json) => Eventis.fromJson(json))
        .toList();
  }

  Future<List<Announceis>> getAnnounce() async {
    final response = await _dio.get('');
    return (response.data['announcements'] as List)
        .map<Announceis>((json) => Announceis.fromJson(json))
        .toList();
  }

  Future<List<Useris>> getUser() async {
    final response = await _dio.get('');
    return (response.data['user'] as List)
        .map<Useris>((json) => Useris.fromJson(json))
        .toList();
  }
}