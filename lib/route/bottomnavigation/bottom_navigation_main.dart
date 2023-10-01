import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';

class BottomNavigationMainRoute extends StatefulWidget {
  BottomNavigationMainRoute();

  @override
  BottomNavigationMainRouteState createState() => new BottomNavigationMainRouteState();
}

class BottomNavigationMainRouteState extends State<BottomNavigationMainRoute> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this,initialIndex: 2);
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
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          leading: IconButton(icon: Icon(Icons.menu, color: Colors.white), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),// overflow menu
          ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    width: 220,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: MyColors.grey_20,
                            ),
                            Container(width: 20),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(height: 10, width : 80, color: MyColors.grey_20),
                                Container(height: 10),
                                Container(height: 10, width : 145, color: MyColors.grey_20),
                                Container(height: 10),
                                Container(height: 10, width : 40, color: MyColors.grey_20)
                              ],
                            )
                          ],
                        ),
                        Container(height: 20),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: MyColors.grey_20,
                            ),
                            Container(width: 20),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(height: 10, width : 100, color: MyColors.grey_20),
                                Container(height: 10),
                                Container(height: 10, width : 145, color: MyColors.grey_20),
                                Container(height: 10),
                                Container(height: 10, width : 40, color: MyColors.grey_20)
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
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
                  unselectedLabelColor: Colors.blue[900], labelColor: Colors.blue[900],
                  tabs: [
                    Tab(icon: Icon(Icons.home,size: 21)),
                    Tab(icon: Icon(Icons.event_seat,size: 21)),
                    FloatingActionButton(
                        heroTag: "fab", backgroundColor: Colors.blue[900],
                        elevation: 3,
                        onPressed: () {  },
                        child: Icon(Icons.add, color: Colors.white,),
                    ),
                    Tab(icon: Icon(Icons.notifications,size: 21)),
                    Tab(icon: Icon(Icons.shopping_cart,size: 21)),
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
