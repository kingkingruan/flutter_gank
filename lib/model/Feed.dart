import 'package:json_annotation/json_annotation.dart';
part 'Feed.g.dart';

@JsonSerializable()
class Feed {
  Feed(this.id, this.createAt, this.desc, this.images, this.publishedAt,
      this.source, this.type, this.url, this.used, this.who);
  @JsonKey(name: "_id")
  String id;
  String createAt;
  String desc;
  List<String> images;
  String publishedAt;
  String source;
  String type;
  String url;
  bool used;
  String who;

  factory Feed.fromJson(Map<String,dynamic> json)=>_$FeedFromJson(json);
  Map<String,dynamic> toJson() =>_$FeedToJson(this);


}
