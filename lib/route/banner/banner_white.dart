import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BannerWhiteRoute extends StatefulWidget {

  BannerWhiteRoute();

  @override
  BannerWhiteRouteState createState() => new BannerWhiteRouteState();
}

class BannerWhiteRouteState extends State<BannerWhiteRoute> with TickerProviderStateMixin{

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
    return new Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: new AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        title: Text("Salads", style: MyText.title(context)!.copyWith(
          color: MyColors.grey_60
        )), titleSpacing: 0,
        iconTheme: IconThemeData(color: MyColors.grey_60),
        backgroundColor: Colors.white,
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
                          Text("We can't complete the search while you are offline.",
                              style: MyText.body1(context)!.copyWith(color: MyColors.grey_80)
                          ),
                          Row(
                            children: [
                              Spacer(),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("VIEW", style: TextStyle(color: MyColors.grey_80),),
                                onPressed: (){
                                  togglePanel();
                                },
                              ),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("DISMISS", style: TextStyle(color: MyColors.grey_80),),
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
                    } else {
                      expand = false;
                      controller.reverse();
                    }
                  } else {
                    expand = false;
                    controller.reverse();
                  }
                  return true;
                },
                child: IncludeReleasesContent.get(context),
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

