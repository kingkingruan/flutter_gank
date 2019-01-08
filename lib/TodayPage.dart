import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:gank_app/FeedsPage.dart';
import 'package:gank_app/model/TodayResult.dart';

class TodayPage extends StatefulWidget {
  @override
  createState() => TodayPageSate();
}

class TodayPageSate extends State<TodayPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  TodayResult data;
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 0, vsync: this);
    this.getToday();
  }

  Future getToday() async {
    Response response = await dio.get("https://gank.io/api/today");
    print("response:" + response.data.toString());
    setState(() {
      data = TodayResult.fromJson(response.data);
      tabController = TabController(length: data.category.length, vsync: this);
      print("today:" + data.error.toString());
    });
  }

//TODO 多页面的缓存还没弄清楚，可能存在crash的可能性
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        isScrollable: true,
        controller: tabController,
        tabs: data == null
            ? []
            : data.category.map((String category) {
                return Tab(
                  child: Text(
                    category,
                    style: TextStyle(color: Colors.blue),
                  ),
                );
              }).toList(),
      ),
      body: TabBarView(
          controller: tabController,
          children: data == null
              ? []
              : data.category.map((String category) {
                  return FeedsPage(data.results[category]);
                }).toList()),
    );
  }
}
