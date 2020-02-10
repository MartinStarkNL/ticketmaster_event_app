// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_events_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketEventsList _$TicketEventsListFromJson(Map<String, dynamic> json) {
  return TicketEventsList(
    events: (json['events'] as List)
        ?.map((e) =>
            e == null ? null : TicketEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TicketEventsListToJson(TicketEventsList instance) =>
    <String, dynamic>{
      'events': instance.events,
    };
