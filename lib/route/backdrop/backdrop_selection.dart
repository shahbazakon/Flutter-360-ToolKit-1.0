import 'dart:async';

import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BackdropSelectionRoute extends StatefulWidget {

  BackdropSelectionRoute();

  @override
  BackdropSelectionState createState() => new BackdropSelectionState();
}

class BackdropSelectionState extends State<BackdropSelectionRoute> with TickerProviderStateMixin {

  late BuildContext _scaffoldCtx;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        Backdrop.of(_scaffoldCtx).revealBackLayer();
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    List<RxBool> movieFlag = [
      false.obs, true.obs, false.obs, false.obs,
    ];
    List<int> movieIndex = List.generate(movieFlag.length, (index) => index);

    List<String> movieLabel = [
      "Shoes", "Dresses", "Shirt", "Accessories"
    ];

    var orderBySelected = "New Arrival".obs;
    List<String> orderByData = [
      "Popular", "New Arrival", "Featured"
    ];

    return BackdropScaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
      backLayerBackgroundColor: Colors.deepPurpleAccent[700],
      animationCurve: Curves.linear,
      animationController: AnimationController(vsync: this, duration: Duration(milliseconds: 700), value: 1),
      appBar: BackdropAppBar(
        automaticallyImplyLeading: false,
        title: Text("Selection control", style: MyText.title(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.deepPurpleAccent[700],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        actions: <Widget>[
          BackdropToggleButton(color: Colors.white, icon: AnimatedIcons.close_menu)
        ],
      ),
      headerHeight: 300,
      frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
      backLayer: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          color: Colors.deepPurpleAccent[700],
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Theme( data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
                  child: Container(
                    child: Column(
                      children: movieIndex.map((r) => Row(
                        children: <Widget>[
                          Checkbox(
                              checkColor: Colors.deepPurpleAccent[700], activeColor: Colors.white,
                              value: movieFlag[r].value, onChanged: (value) {}
                          ),
                          Container(width: 10),
                          Text(movieLabel[r], style: MyText.body1(context)!.copyWith(color: Colors.white)),
                        ],
                      )).toList(),
                    ),
                  ),
                ),
                Container(height: 15),
                Container(child: Divider(height: 0, color: MyColors.grey_40), margin: EdgeInsets.symmetric(horizontal: 10)),
                Theme( data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Column(
                      children: orderByData.map((r) => RadioListTile(
                        title: Text(r, style: MyText.body1(context)!.copyWith(color: Colors.white)),
                        dense: true, activeColor: Colors.white, tileColor: Colors.white,
                        contentPadding: EdgeInsets.all(0),
                        groupValue: orderBySelected.value, selected: r == orderBySelected.value, value: r,
                        onChanged: (dynamic val) {
                          orderBySelected.value = val;
                        },
                      )).toList(),
                    ),
                  ),
                ),
                Container(height: 80),
              ],
            )),
          ),
        );
      }),
      frontLayerScrim: Colors.transparent,
      frontLayer: Container(
        color: Colors.white,
        child: Column(
          children : <Widget>[
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
                            backgroundColor: Colors.grey[400],
                          ),
                          Container(width: 20),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(height: 10, width : 80, color: Colors.grey[400]),
                              Container(height: 10),
                              Container(height: 10, width : 145, color: Colors.grey[400]),
                              Container(height: 10),
                              Container(height: 10, width : 40, color: Colors.grey[400])
                            ],
                          )
                        ],
                      ),
                      Container(height: 20),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[300],
                          ),
                          Container(width: 20),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(height: 10, width : 100, color: Colors.grey[300]),
                              Container(height: 10),
                              Container(height: 10, width : 145, color: Colors.grey[300]),
                              Container(height: 10),
                              Container(height: 10, width : 40, color: Colors.grey[300])
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}