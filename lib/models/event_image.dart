import 'package:json_annotation/json_annotation.dart';

part 'event_image.g.dart';

@JsonSerializable()
class EventImage {
  final String ratio;
  final String url;
  final int width;
  final int height;
  final bool fallback;

  EventImage({this.ratio, this.url, this.width, this.height, this.fallback});
  factory EventImage.fromJson(Map<String, dynamic> json) => _$EventImageFromJson(json);
  Map<String, dynamic> toJson() => _$EventImageToJson(this);
}
