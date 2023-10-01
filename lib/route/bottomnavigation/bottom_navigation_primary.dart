import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BottomNavigationPrimaryRoute extends StatefulWidget {

  BottomNavigationPrimaryRoute();

  @override
  BottomNavigationPrimaryRouteState createState() => new BottomNavigationPrimaryRouteState();
}

class BottomNavigationPrimaryRouteState extends State<BottomNavigationPrimaryRoute> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
          title: Text("Shopping", style: MyText.title(context)!.copyWith(
              color: MyColors.grey_60
          )),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),// overflow menu
          ]
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        child: FloatingActionButton(
          heroTag: "fab1",
          backgroundColor: Colors.teal[500],
          elevation: 2,
          child: Icon(Icons.shopping_cart, color: Colors.white,),
          onPressed: () { print('Clicked'); },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                  tabs: [
                    Container(
                      child: Tab(icon: Icon(Icons.apps, color: Colors.teal[600])),
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    ),
                    Container(
                      child: Tab(icon: Icon(Icons.local_offer, color: Colors.teal[600])),
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    )
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

