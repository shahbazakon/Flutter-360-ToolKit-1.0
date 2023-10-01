import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TabsIconRoute extends StatefulWidget {

  TabsIconRoute();

  @override
  TabsIconRouteState createState() => new TabsIconRouteState();
}


class TabsIconRouteState extends State<TabsIconRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;
  late String title;
  List <String> titles = ["Music", "Movies", "Books", "Games"];

  @override
  void initState() {
    title = titles[0];
    _scrollController = ScrollController();
    _tabController = TabController(length: 4, vsync: this);
    _tabController!.addListener((){
      setState(() {
        title = titles[_tabController!.index];
      });
    });
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
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              title: Text(title), pinned: true, floating: true,
              backgroundColor: Colors.blueGrey[600],
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
                  Tab(icon: Icon(Icons.music_note)),
                  Tab(icon: Icon(Icons.ondemand_video)),
                  Tab(icon: Icon(Icons.book)),
                  Tab(icon: Icon(Icons.games)),
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

