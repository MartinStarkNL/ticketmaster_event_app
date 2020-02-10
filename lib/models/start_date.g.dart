// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartDate _$StartDateFromJson(Map<String, dynamic> json) {
  return StartDate(
    localDate: json['localDate'] as String,
    localTime: json['localTime'] as String,
    dateTime: json['dateTime'] as String,
  );
}

Map<String, dynamic> _$StartDateToJson(StartDate instance) => <String, dynamic>{
      'localDate': instance.localDate,
      'localTime': instance.localTime,
      'dateTime': instance.dateTime,
    };
