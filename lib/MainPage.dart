import 'package:flutter/material.dart';
import 'package:gank_app/SearchPage.dart';
import 'package:gank_app/TodayPage.dart';

class MainPage extends StatefulWidget {
  @override
  createState() => MainPageState();
}

class MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gank"),
        centerTitle: true,
      ),
      body: TabBarView(
          controller: tabController,
          children: <Widget>[TodayPage(), SearchPage()]),
      bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
              controller: tabController,
              indicatorColor: Colors.blue,
              tabs: <Tab>[
                Tab(
                  icon: Icon(Icons.today),
                ),
                Tab(
                  icon: Icon(Icons.search),
                )
              ])),
    );
  }
}
