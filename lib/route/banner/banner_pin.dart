import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_album_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/image_obj.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BannerPinRoute extends StatefulWidget {

  BannerPinRoute();

  @override
  BannerPinRouteState createState() => new BannerPinRouteState();
}

class BannerPinRouteState extends State<BannerPinRoute> with TickerProviderStateMixin{

  bool expand = false;
  late AnimationController controller;
  late Animation<double> animation, animationView;

  List<ImageObj> items = [];

  void onItemClick(int index, ImageObj obj) {
    togglePanel();
  }

  @override
  void initState() {
    items = Dummy.getImageDate();
    items.addAll(Dummy.getImageDate());

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
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ), title: Text("Banner Pin", style: MyText.title(context)!.copyWith(
          color: MyColors.grey_60
        )), titleSpacing: 0,
        iconTheme: IconThemeData(color: MyColors.grey_60),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
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
                              Container(width: 5),
                              Container(
                                width: 50, height: 50,
                                child: Icon(Icons.signal_wifi_off, color: Colors.white, size: 25),
                                decoration: BoxDecoration(shape: BoxShape.circle, color: MyColors.primary),
                              ),
                              Container(width: 20),
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
                                child: Text("TURN ON WIFI", style: TextStyle(color: MyColors.primaryDark),),
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
              child: GridAlbumAdapter(items, onItemClick).getView()
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

