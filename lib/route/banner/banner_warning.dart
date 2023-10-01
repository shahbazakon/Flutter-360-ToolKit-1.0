import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_news_card_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/news.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BannerWarningRoute extends StatefulWidget {

  BannerWarningRoute();

  @override
  BannerWarningRouteState createState() => new BannerWarningRouteState();
}

class BannerWarningRouteState extends State<BannerWarningRoute> with TickerProviderStateMixin{

  bool expand = false;
  late AnimationController controller;
  late Animation<double> animation, animationView;

  void onItemClick(int index, String obj) {
    togglePanel();
  }

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 100),);

    animation = Tween(begin: 0.0, end: -0.5).animate(controller);
    animationView = CurvedAnimation(parent: controller, curve: Curves.linear);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        togglePanel();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<News> items = Dummy.getNewsData(10);

    return new Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: new AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        title: new Text("Warning"),
        backgroundColor: Colors.orange[600],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ]
      ),
      body: Column(
        children: [
          SizeTransition(
            sizeFactor: animationView,
            child: Column(
              children: [
                Card(
                    margin: EdgeInsets.all(0),
                    elevation: 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.only(left: 15, top:20, right: 15, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.cloud_off, color: Colors.green[400], size: 35),
                              Container(width: 15),
                              Text("You have lost connection to the internet.\nThis app is offline",
                                  style: MyText.body1(context)!.copyWith(color: MyColors.grey_80)
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Spacer(),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("TURN ON WIFI", style: TextStyle(color: Colors.orange[600]),),
                                onPressed: (){
                                  togglePanel();
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                ),
                Container(height: 5),
              ],
            ),
          ),
          Expanded(
              child: NotificationListener<ScrollEndNotification>(
                onNotification: (scrollEnd) {
                  var metrics = scrollEnd.metrics;
                  if (metrics.atEdge) {
                    if (metrics.pixels == 0 && !expand) {
                      expand = true;
                      controller.forward(from:0);
                    }
                  } else {
                    expand = false;
                    controller.reverse();
                  }
                  return true;
                },
                child: ListNewsCardAdapter(items, onItemClick).getWidgetView(),
              )
          )
        ],
      ),
    );
  }

  void togglePanel(){
    if(!expand){
      controller.forward(from:0);
    } else {
      controller.reverse();
    }
    expand = !expand;
  }
}

