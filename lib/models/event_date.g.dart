// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDate _$EventDateFromJson(Map<String, dynamic> json) {
  return EventDate(
    timezone: json['timezone'] as String,
    spanMultipleDays: json['spanMultipleDays'] as bool,
    start: json['start'] == null
        ? null
        : StartDate.fromJson(json['start'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : EventStatus.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EventDateToJson(EventDate instance) => <String, dynamic>{
      'timezone': instance.timezone,
      'spanMultipleDays': instance.spanMultipleDays,
      'start': instance.start,
      'status': instance.status,
    };
