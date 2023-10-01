import 'dart:async';

import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BackdropStepperRoute extends StatefulWidget {

  BackdropStepperRoute();

  @override
  BackdropStepperState createState() => new BackdropStepperState();
}

class BackdropStepperState extends State<BackdropStepperRoute> with TickerProviderStateMixin {

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

  void closeFrontLayer(){
    Backdrop.of(_scaffoldCtx).concealBackLayer();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
      backLayerBackgroundColor: Colors.deepPurpleAccent[700],
      animationCurve: Curves.linear,
      animationController: AnimationController(vsync: this, duration: Duration(milliseconds: 300), value: 1),
      appBar: BackdropAppBar(
        title: Row(
          children: [
            Container(width: 15),
            Icon(Icons.check_circle, color: Colors.white),
            Container(width: 25),
            Text("Select an app", style: MyText.subhead(context)!.copyWith(color: Colors.white)), Spacer(),
            BackdropToggleButton(color: Colors.white, icon: AnimatedIcons.close_menu)
          ],
        ),
        automaticallyImplyLeading: false, titleSpacing: 0,
        backgroundColor: Colors.deepPurpleAccent[700],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      headerHeight: 500,
      frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.circular(6), topRight: Radius.circular(6)),
      backLayer: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          color: Colors.deepPurpleAccent[700], alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 1, color: Colors.white, height: 8, margin: EdgeInsets.only(left: 27, right: 27, bottom: 3)),
              Row(
                children: [
                  Container(width: 15), Icon(Icons.check_circle, color: Colors.white), Container(width: 25),
                  Text("Configure analytics", style: MyText.subhead(context)!.copyWith(color: Colors.white)), Spacer()
                ],
              ),
              Container(width: 1, color: Colors.white, height: 20, margin: EdgeInsets.symmetric(horizontal: 27, vertical: 3)),
              Row(
                children: [
                  Container(width: 15),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.circle, color: Colors.white),
                      Text("3", style: MyText.body2(context)!.copyWith(color: Colors.deepPurpleAccent[700]))
                    ],
                  ),
                  Container(width: 25),
                  Text("Select ad format", style: MyText.subhead(context)!.copyWith(color: Colors.white)), Spacer()
                ],
              ),
              Container(height: 25),
              Row(
                children: [
                  Container(width: 15),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.circle, color: Colors.white),
                      Text("4", style: MyText.body2(context)!.copyWith(color: Colors.deepPurpleAccent[700]))
                    ],
                  ),
                  Container(width: 25),
                  Text("Placement", style: MyText.subhead(context)!.copyWith(color: Colors.white)), Spacer()
                ],
              ),
            ],
          ),
        );
      }),
      frontLayerScrim: Colors.transparent,
      frontLayer: Container(
        color: Colors.white, alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          scrollDirection: Axis.vertical,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("FIRST NAME", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45, alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(maxLines: 1,
                        controller: new TextEditingController(text: "John"),
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Text("LAST NAME", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(maxLines: 1,
                        controller: new TextEditingController(text: "Smith"),
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Text("EMAIL", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(maxLines: 1, keyboardType: TextInputType.emailAddress,
                        controller: new TextEditingController(text: "john.smith@mail.com"),
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Text("PHONE", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                        controller: new TextEditingController(text: "083 2374 2342"),
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("STATE", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                            Container(height: 5),
                            Card(
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                              clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                              margin: EdgeInsets.all(0), elevation: 0,
                              child: Container(
                                height: 45,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: <Widget>[
                                    Container(width: 15),
                                    Expanded(
                                      child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                                        controller: new TextEditingController(text: "California"),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.expand_more, color: MyColors.grey_40)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("ZIP CODE", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                            Container(height: 5),
                            Card(
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                              clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                              margin: EdgeInsets.all(0), elevation: 0,
                              child: Container(
                                height: 45,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                                  controller: new TextEditingController(text: "6625"),
                                  decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(height: 15),
                  Text("COUNTRY", style: TextStyle(fontSize: 11, color: MyColors.grey_60)),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, color: MyColors.grey_5,
                    margin: EdgeInsets.all(0), elevation: 0,
                    child: Container(
                      height: 45,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: <Widget>[
                          Container(width: 15),
                          Expanded(
                            child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                              controller: new TextEditingController(text: "United State"),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.expand_more, color: MyColors.grey_40)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}