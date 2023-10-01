import 'dart:async';

import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_news_light_hrzntl_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/news.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class BackdropTextFieldRoute extends StatefulWidget {

  BackdropTextFieldRoute();

  @override
  BackdropTextFieldState createState() => new BackdropTextFieldState();
}

class BackdropTextFieldState extends State<BackdropTextFieldRoute> with TickerProviderStateMixin {

  late BuildContext _scaffoldCtx;
  double menuHeight = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        Backdrop.of(_scaffoldCtx).revealBackLayer();
      });
    });
  }

  void onItemClick(int index, News obj) {
    MyToast.show("News " + index.toString() + "clicked", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    List<News> items = Dummy.getNewsData(10);
    return BackdropScaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
      backLayerBackgroundColor: Colors.deepPurpleAccent[700],
      animationCurve: Curves.linear,
      animationController: AnimationController(vsync: this, duration: Duration(milliseconds: 300), value: 1),
      appBar: BackdropAppBar(
        automaticallyImplyLeading: false, backgroundColor: Colors.deepPurpleAccent[700],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        titleSpacing: 0,
        title: Column(
          children: [
            Container(
              width: double.maxFinite, alignment: Alignment.center,
              child: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2, isScrollable: true,
                tabs: [
                  Tab(icon: Text("BOOK")),
                  Tab(icon: Text("REVIEW")),
                  Tab(icon: Text("TIMES")),
                ],
                controller: TabController(length: 3, vsync: this),
                onTap: (index){
                  if(index == 0){
                    Backdrop.of(_scaffoldCtx).revealBackLayer();
                  } else {
                    Backdrop.of(_scaffoldCtx).concealBackLayer();
                  }
                },
              ),
            ),
            Container(width: double.maxFinite, height: 1, color: Colors.white.withOpacity(0.25))
          ],
        ),
        ),
      headerHeight: 460,
      frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.circular(6), topRight: Radius.circular(6)),
      backLayer: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          color: Colors.deepPurpleAccent[700], alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                clipBehavior: Clip.antiAliasWithSaveLayer, color: Colors.white.withOpacity(0.25),
                margin: EdgeInsets.all(0), elevation: 0,
                child: Container(
                  height: 45, alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: <Widget>[
                      Container(width: 5), Icon(Icons.location_on, color: Colors.white), Container(width: 20),
                      Expanded(
                        child: TextField(maxLines: 1, style: TextStyle(color: Colors.white),
                          controller: new TextEditingController(text: "Royal Hotel"),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 15),
              Row(
                children: [
                  Expanded(child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: Colors.white.withOpacity(0.25),
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45, alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: <Widget>[
                          Container(width: 5),
                          Icon(Icons.people, color: Colors.white),
                          Container(width: 20),
                          Expanded(
                            child: TextField(maxLines: 1, style: TextStyle(color: Colors.white),
                              controller: new TextEditingController(text: "2 guest"),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.white),
                          Container(width: 5),
                        ],
                      ),
                    ),
                  )),
                  Container(width: 15),
                  Expanded(child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: Colors.white.withOpacity(0.25),
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45, alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: <Widget>[
                          Container(width: 5),
                          Icon(Icons.meeting_room, color: Colors.white),
                          Container(width: 20),
                          Expanded(
                            child: TextField(maxLines: 1, style: TextStyle(color: Colors.white),
                              controller: new TextEditingController(text: "1 room"),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.white),
                          Container(width: 5),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              Container(height: 15),
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                clipBehavior: Clip.antiAliasWithSaveLayer, color: Colors.white.withOpacity(0.25),
                margin: EdgeInsets.all(0), elevation: 0,
                child: Container(
                  height: 45, alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: <Widget>[
                      Container(width: 5), Icon(Icons.event, color: Colors.white), Container(width: 20),
                      Expanded(
                        child: TextField(maxLines: 1, style: TextStyle(color: Colors.white),
                          controller: new TextEditingController(text: "Today, 10/07/18"),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
      frontLayerScrim: Colors.transparent,
      frontLayer: Container(
        color: Colors.white, height: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 15),
        child:  ListNewsLightHrzntlAdapter(items, onItemClick).getWidgetView(),
      ),
    );
  }

}