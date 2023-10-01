import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BottomNavigationIconRoute extends StatefulWidget {

  BottomNavigationIconRoute();

  @override
  BottomNavigationIconRouteState createState() => new BottomNavigationIconRouteState();
}

class BottomNavigationIconRouteState extends State<BottomNavigationIconRoute> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController!.addListener((){ });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          iconTheme: IconThemeData(color: MyColors.grey_60),
          title: Text("Home", style: MyText.title(context)!.copyWith(
              color: MyColors.grey_60
          )),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),// overflow menu
          ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: IncludeReleasesContent.get(context),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(0),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 1,
                  unselectedLabelColor: Colors.grey[600], labelColor: Colors.deepOrange[500],
                  tabs: [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.search)),
                    Tab(icon: Icon(Icons.add_box)),
                    Tab(icon: Icon(Icons.favorite_border)),
                    Tab(icon: Icon(Icons.person)),
                  ],
                  controller: _tabController,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

