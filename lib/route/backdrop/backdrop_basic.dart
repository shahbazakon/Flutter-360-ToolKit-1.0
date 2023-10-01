import 'dart:async';

import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BackdropBasicRoute extends StatefulWidget {

  BackdropBasicRoute();

  @override
  BackdropBasicState createState() => new BackdropBasicState();
}

class BackdropBasicState extends State<BackdropBasicRoute> with TickerProviderStateMixin {

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
    double height = MediaQuery.of(context).size.height + kToolbarHeight;
    return BackdropScaffold(
      backgroundColor: Colors.yellow[600],
      backLayerBackgroundColor: Colors.yellow[600],
      animationCurve: Curves.linear,
      animationController: AnimationController(vsync: this, duration: Duration(milliseconds: 300), value: 1),
      appBar: BackdropAppBar(
        titleSpacing: 0, iconTheme: IconThemeData(color: MyColors.grey_80),
        backgroundColor: Colors.yellow[600],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        leading: BackdropToggleButton(
          color: MyColors.grey_80,
          icon: AnimatedIcons.close_menu,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.close, color: MyColors.grey_80), onPressed: () {
            Navigator.pop(context);
          })
        ],
      ),
      headerHeight: height / 2,
      frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
      frontLayerBackgroundColor: Colors.transparent,
      backLayer: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          padding: EdgeInsets.only(top: height / 8),
          height: height / 2, color: Colors.yellow[600], alignment: Alignment.topCenter,
          child: Text("BACKDROP", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
        );
      }),
      frontLayerScrim: Colors.transparent,
      frontLayer: Container(
        padding: EdgeInsets.only(top: height / 8),
        color: Colors.white, alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("CONTENT", style: MyText.headline(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold)),
            Text(
              "Click menu icon above \nto show backdrop",
              style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

}