import 'package:json_annotation/json_annotation.dart';

part 'event_status.g.dart';

@JsonSerializable()
class EventStatus {
  final String code;

  EventStatus({this.code});
  factory EventStatus.fromJson(Map<String, dynamic> json) => _$EventStatusFromJson(json);
  Map<String, dynamic> toJson() => _$EventStatusToJson(this);
}