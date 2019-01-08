import 'package:gank_app/model/Feed.dart';
import 'package:json_annotation/json_annotation.dart';

part 'TodayResult.g.dart';

@JsonSerializable()
class TodayResult {

  TodayResult(this.category, this.error, this.results);

  List<String> category;
  bool error;
  Map<String, List<Feed>> results;

  factory TodayResult.fromJson(Map<String,dynamic> json)=>_$TodayResultFromJson(json);
  Map<String,dynamic> toJson() =>_$TodayResultToJson(this);

}
