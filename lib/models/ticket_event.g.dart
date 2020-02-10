// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketEvent _$TicketEventFromJson(Map<String, dynamic> json) {
  return TicketEvent(
    name: json['name'] as String,
    type: json['type'] as String,
    id: json['id'] as String,
    url: json['url'] as String,
    locale: json['locale'] as String,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : EventImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dates: json['dates'] == null
        ? null
        : EventDate.fromJson(json['dates'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TicketEventToJson(TicketEvent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'id': instance.id,
      'url': instance.url,
      'locale': instance.locale,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'dates': instance.dates?.toJson(),
    };
