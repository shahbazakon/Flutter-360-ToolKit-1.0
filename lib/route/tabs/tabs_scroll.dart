import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TabsScrollRoute extends StatefulWidget {

  TabsScrollRoute();

  @override
  TabsScrollRouteState createState() => new TabsScrollRouteState();
}


class TabsScrollRouteState extends State<TabsScrollRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
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
              backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
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
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.body2(context)!.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
                unselectedLabelColor: Colors.grey[300],
                tabs: [
                  Tab(text: "HOME"),
                  Tab(text: "TOP ARTISTS"),
                  Tab(text: "TOP ALBUMS"),
                  Tab(text: "NEW RELEASES"),
                  Tab(text: "TOP SONGS"),
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
            IncludeReleasesContent.get(context),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

