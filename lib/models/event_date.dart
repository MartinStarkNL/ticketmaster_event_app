import 'package:json_annotation/json_annotation.dart';
import './start_date.dart';
import './event_status.dart';

part 'event_date.g.dart';

@JsonSerializable()
class EventDate {
  final String timezone;
  final bool spanMultipleDays;
  final StartDate start;
  final EventStatus status;

  EventDate({this.timezone, this.spanMultipleDays, this.start, this.status});
  factory EventDate.fromJson(Map<String, dynamic> json) => _$EventDateFromJson(json);
  Map<String, dynamic> toJson() => _$EventDateToJson(this);
}