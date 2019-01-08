// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return Feed(
      json['_id'] as String,
      json['createAt'] as String,
      json['desc'] as String,
      (json['images'] as List)?.map((e) => e as String)?.toList(),
      json['publishedAt'] as String,
      json['source'] as String,
      json['type'] as String,
      json['url'] as String,
      json['used'] as bool,
      json['who'] as String);
}

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      '_id': instance.id,
      'createAt': instance.createAt,
      'desc': instance.desc,
      'images': instance.images,
      'publishedAt': instance.publishedAt,
      'source': instance.source,
      'type': instance.type,
      'url': instance.url,
      'used': instance.used,
      'who': instance.who
    };
