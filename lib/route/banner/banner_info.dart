import 'dart:async';

import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/grid_basic_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class BannerInfoRoute extends StatefulWidget {

  BannerInfoRoute();

  @override
  BannerInfoRouteState createState() => new BannerInfoRouteState();
}

class BannerInfoRouteState extends State<BannerInfoRoute> with TickerProviderStateMixin{

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

    List<String> items = Dummy.getNatureImages();
    items.addAll(Dummy.getNatureImages());
    items.addAll(Dummy.getNatureImages());
    items.addAll(Dummy.getNatureImages());

    return new Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Saved Recipe") as PreferredSizeWidget?,
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
                              Icon(Icons.favorite, color: Colors.green[400], size: 35),
                              Container(width: 15),
                              Text("Recipe saved successfully into your favorite, you can \nread it when offline",
                                  style: MyText.body1(context)!.copyWith(color: MyColors.grey_80)
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Spacer(),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("VIEW", style: TextStyle(color: MyColors.primary),),
                                onPressed: (){
                                  togglePanel();
                                },
                              ),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("DISMISS", style: TextStyle(color: MyColors.primary),),
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
                child: GridBasicAdapter(items, onItemClick).getView(),
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

