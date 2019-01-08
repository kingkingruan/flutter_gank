// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TodayResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodayResult _$TodayResultFromJson(Map<String, dynamic> json) {
  return TodayResult(
      (json['category'] as List)?.map((e) => e as String)?.toList(),
      json['error'] as bool,
      (json['results'] as Map<String, dynamic>)?.map((k, e) => MapEntry(
          k,
          (e as List)
              ?.map((e) =>
                  e == null ? null : Feed.fromJson(e as Map<String, dynamic>))
              ?.toList())));
}

Map<String, dynamic> _$TodayResultToJson(TodayResult instance) =>
    <String, dynamic>{
      'category': instance.category,
      'error': instance.error,
      'results': instance.results
    };
