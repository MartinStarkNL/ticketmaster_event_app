import 'package:json_annotation/json_annotation.dart';

part 'start_date.g.dart';


@JsonSerializable()
class StartDate {
  final String localDate;
  final String localTime;
  final String dateTime;

  StartDate({this.localDate, this.localTime, this.dateTime});
  factory StartDate.fromJson(Map<String, dynamic> json) => _$StartDateFromJson(json);
  Map<String, dynamic> toJson() => _$StartDateToJson(this);
}
