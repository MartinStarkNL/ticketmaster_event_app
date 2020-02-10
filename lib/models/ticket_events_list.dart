import 'package:json_annotation/json_annotation.dart';
import './ticket_event.dart';

part 'ticket_events_list.g.dart';

@JsonSerializable()
class TicketEventsList {
  final List<TicketEvent> events;

  TicketEventsList({this.events});

  factory TicketEventsList.fromJson(Map<String, dynamic> json) => _$TicketEventsListFromJson(json);
  Map<String, dynamic> toJson() => _$TicketEventsListToJson(this);
}