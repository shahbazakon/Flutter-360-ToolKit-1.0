import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_news_card_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/news.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class TabsSimpleLightRoute extends StatefulWidget {

  TabsSimpleLightRoute();

  @override
  TabsSimpleLightRouteState createState() => new TabsSimpleLightRouteState();
}


class TabsSimpleLightRouteState extends State<TabsSimpleLightRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;
  late List<News> items;

  void onItemClick(int index, News obj) {
    MyToast.show("News " + index.toString() + "clicked", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    items = Dummy.getNewsData(15);
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light
              ), pinned: true, floating: true,
              backgroundColor: Colors.white, forceElevated: innerBoxIsScroller,
              iconTheme: IconThemeData(color: MyColors.grey_80),
              leading: IconButton(icon: Icon(Icons.notes), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {},),// overflow menu
              ],
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab, isScrollable: true,
                indicatorPadding: EdgeInsets.symmetric(vertical: 8),
                labelColor: MyColors.primaryDark, unselectedLabelColor: MyColors.grey_40,
                indicator: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20)
                ),
                tabs: [
                  Container(width: 70, child: Tab(text: "All"),),
                  Container(width: 70, child: Tab(text: "Trending"),),
                  Container(width: 70, child: Tab(text: "New"),),
                  Container(width: 70, child: Tab(text: "Featured"),)
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: ListNewsCardAdapter(items, onItemClick).getWidgetView(),
      ),
    );
  }
}

