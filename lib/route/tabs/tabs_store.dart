import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TabsStoreRoute extends StatefulWidget {

  TabsStoreRoute();

  @override
  TabsStoreRouteState createState() => new TabsStoreRouteState();
}


class TabsStoreRouteState extends State<TabsStoreRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
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
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              title: Text('Store'), pinned: true, floating: true,
              backgroundColor: Colors.blueGrey[600], systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),// overflow menu
                PopupMenuButton<String>(
                  onSelected: (String value){},
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.subhead(context)!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                unselectedLabelColor: Colors.grey[400],
                tabs: [
                  Tab(text: "MUSIC"),
                  Tab(text: "MOVIE"),
                  Tab(text: "BOOKS"),
                  Tab(text: "GAMES"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            IncludeReleasesContent.get(context),
            IncludeReleasesContent.get(context),
            IncludeReleasesContent.get(context),
            IncludeReleasesContent.get(context),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

