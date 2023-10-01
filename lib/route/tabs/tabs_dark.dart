import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_basic_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TabsDarkRoute extends StatefulWidget {

  TabsDarkRoute();

  @override
  TabsDarkRouteState createState() => new TabsDarkRouteState();
}


class TabsDarkRouteState extends State<TabsDarkRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  void onItemClick(int index, String obj) {

  }

  @override
  Widget build(BuildContext context) {

    List<String> items = Dummy.getNatureImages();

    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ), pinned: true, floating: true,
              title: Text('Dark', style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.grey[900],
              leading: IconButton(icon: const Icon(Icons.menu, color: Colors.white), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.deepOrange,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.subhead(context)!.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
                unselectedLabelColor: Colors.grey[500],
                tabs: [
                  Tab(text: "ALL"),
                  Tab(text : "CAMERA"),
                  Tab(text : "RECENT"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            GridBasicAdapter(items, onItemClick).getView(),
            GridBasicAdapter(items, onItemClick).getView(),
            GridBasicAdapter(items, onItemClick).getView(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

