import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_basic_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TabsLightRoute extends StatefulWidget {

  TabsLightRoute();

  @override
  TabsLightRouteState createState() => new TabsLightRouteState();
}


class TabsLightRouteState extends State<TabsLightRoute> with SingleTickerProviderStateMixin{

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
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ), pinned: true, floating: true,
              title: Text('Gallery', style: TextStyle(color: MyColors.grey_60)),
              backgroundColor: Colors.white,
              leading: IconButton(icon: const Icon(Icons.menu, color: MyColors.grey_60), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search, color: MyColors.grey_60),
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.deepOrange,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.subhead(context)!.copyWith(fontWeight: FontWeight.bold),
                labelColor: Colors.deepOrange,
                unselectedLabelColor: Colors.grey[600],
                tabs: [
                  Tab(text: "ALL"),
                  Tab(text: "CAMERA"),
                  Tab(text: "RECENT"),
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

