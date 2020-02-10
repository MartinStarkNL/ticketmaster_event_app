import 'package:json_annotation/json_annotation.dart';
import './event_image.dart';
import './event_date.dart';

part 'ticket_event.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketEvent {
  final String name;
  final String type;
  final String id;
  final String url;
  final String locale;
  final List<EventImage> images;
  final EventDate dates;

  TicketEvent({this.name, this.type, this.id, this.url, this.locale, this.images, this.dates});
  factory TicketEvent.fromJson(Map<String, dynamic> json) => _$TicketEventFromJson(json);
  Map<String, dynamic> toJson() => _$TicketEventToJson(this);
}