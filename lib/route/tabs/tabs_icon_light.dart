import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TabsIconLightRoute extends StatefulWidget {

  TabsIconLightRoute();

  @override
  TabsIconLightRouteState createState() => new TabsIconLightRouteState();
}


class TabsIconLightRouteState extends State<TabsIconLightRoute> with SingleTickerProviderStateMixin{

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
              title: Text(title, style: TextStyle(color: MyColors.grey_60)), pinned: true, floating: true,
              backgroundColor: Colors.white, systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              leading: IconButton(icon: const Icon(Icons.menu, color: MyColors.grey_60), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search, color: MyColors.grey_60),
                  onPressed: () {},
                ),// overflow menu
                IconButton(
                  icon: const Icon(Icons.more_vert, color: MyColors.grey_60),
                  onPressed: () {},
                ),//
              ],
              bottom: TabBar(
                indicatorColor: Colors.deepOrange[500],
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.subhead(context)!.copyWith(fontWeight: FontWeight.bold, color: Colors.deepOrange[500]),
                unselectedLabelColor: MyColors.grey_60,
                labelColor: Colors.deepOrange[500],
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

