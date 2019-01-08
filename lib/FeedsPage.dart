import 'package:flutter/material.dart';
import 'package:gank_app/WebPage.dart';
import 'package:gank_app/model/Feed.dart';

class FeedsPage extends StatefulWidget {
  List<Feed> feeds;

  FeedsPage(this.feeds);

  @override
  State<StatefulWidget> createState() {
    return FeedsPageState(feeds);
  }
}

class FeedsPageState extends State<FeedsPage> {
  List<Feed> feeds;

  FeedsPageState(this.feeds);

  Widget divider = Divider(
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return new ListView.separated(
      itemCount: feeds == null ? 0 : feeds.length,
      itemBuilder: (BuildContext context, int index) {
        Feed feed = feeds[index];
        return GestureDetector(
          onTap: () =>
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => GankWebPage(feed.url))),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(

              children: <Widget>[
                new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 100,
                  child: Text(feed.desc),
                ),
                feed.images != null && feed.images.length > 0
                    ? Image(
                  image: NetworkImage(feed.images[0]),
                  width: 80,
                  height: 80,
                )
                    : Text(""),

              ],
            ),
          ));
      },
      separatorBuilder: (BuildContext context, int index) {
        return divider;
      },
    );
  }
}
