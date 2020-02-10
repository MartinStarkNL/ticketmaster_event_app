import 'package:http/http.dart' as http;
import 'package:ticketmaster_events_app/config.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/models/ticket_events_list.dart';
import 'dart:convert';

class EventClient {
  Future<List<TicketEvent>> fetchEvents(String countryCode, int page, int eventsPerPage) async {
    var url = '${Config.BASE_URL}/events.json?'
      + 'countryCode=$countryCode&'
      + 'page=$page&'
      + 'size=$eventsPerPage&'
      + 'apikey=${Config.API_KEY}';
    
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var data = TicketEventsList.fromJson(json.decode(response.body)['_embedded']);
      return data.events;
    } else {
      throw Exception('Failed to fetch ticketmaster events');
    }
  }
}
