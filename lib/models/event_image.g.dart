// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventImage _$EventImageFromJson(Map<String, dynamic> json) {
  return EventImage(
    ratio: json['ratio'] as String,
    url: json['url'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    fallback: json['fallback'] as bool,
  );
}

Map<String, dynamic> _$EventImageToJson(EventImage instance) =>
    <String, dynamic>{
      'ratio': instance.ratio,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'fallback': instance.fallback,
    };
