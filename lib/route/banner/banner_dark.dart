import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content_dark.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BannerDarkRoute extends StatefulWidget {

  BannerDarkRoute();

  @override
  BannerDarkRouteState createState() => new BannerDarkRouteState();
}

class BannerDarkRouteState extends State<BannerDarkRoute> with TickerProviderStateMixin{

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
      backgroundColor: Colors.black,
      appBar: new AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          title: Text("Salads", style: MyText.title(context)!.copyWith(
          color: Colors.white
        )), titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey[900],
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
                Divider(height: 1, color: MyColors.grey_40),
                Card(
                    margin: EdgeInsets.all(0),
                    elevation: 1, color: Colors.grey[900],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.only(left: 15, top:20, right: 15, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.cloud_off, color: Colors.orange[900], size: 35),
                              Container(width: 15),
                              Text("You have lost connection to the internet.\nThis app is offline",
                                  style: MyText.body1(context)!.copyWith(color: Colors.white)
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Spacer(),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("TURN ON WIFI", style: TextStyle(color: Colors.orange[900])),
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
                child: IncludeReleasesContentDark.get(context),
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

