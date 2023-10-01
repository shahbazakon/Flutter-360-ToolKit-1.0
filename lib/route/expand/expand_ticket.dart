import 'dart:math' as math;


import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ExpandTicketRoute extends StatefulWidget {

  ExpandTicketRoute();

  @override
  ExpandTicketRouteState createState() => new ExpandTicketRouteState();
}


class ExpandTicketRouteState extends State<ExpandTicketRoute> with TickerProviderStateMixin {

  bool expand1 = false;
  bool expand2 = false;
  late AnimationController controller1, controller2;
  late Animation<double> animation1, animation1View;
  late Animation<double> animation2, animation2View;

  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);
    controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);

    animation1 = Tween(begin: 0.0, end: 180.0).animate(controller1);
    animation1View = CurvedAnimation(parent: controller1, curve: Curves.linear);

    animation2 = Tween(begin: 0.0, end: 180.0).animate(controller2);
    animation2View = CurvedAnimation(parent: controller2, curve: Curves.linear);

    controller1.addListener(() { setState(() {}); });
    controller2.addListener(() { setState(() {}); });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Flight Ticket") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 3),
              elevation: 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity, height: 60,
                child: Row(
                  children: <Widget>[
                    Container(width: 10),
                    Text("Booking Code", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                    Spacer(),
                    Text("CXDT2887A", style: MyText.title(context)!.copyWith(color: MyColors.accent)),
                    Container(width: 10),
                    IconButton(
                      icon: Icon(Icons.content_copy, color: MyColors.grey_60,),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 3),
              elevation: 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(child: Icon(Icons.flight, color: MyColors.primary),
                          padding: EdgeInsets.all(20),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lion JT-539", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                            Container(height: 2),
                            Text("Promo (Subclass T)", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                          ],
                        )
                      ],
                    ),
                    Divider(height: 0),
                    Container(
                      height: 150,
                      padding: EdgeInsets.all(15),
                      child: Row(
                       children: <Widget>[
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("17.40", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                             Text("28 Sep", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                             Spacer(),
                             Text("17.40", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                             Text("28 Sep", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                           ],
                         ),
                         Container(width: 20),
                         Column(
                           children: <Widget>[
                             Container(height: 5),
                             Container(
                               width : 15, height: 15,
                               decoration: BoxDecoration(
                                 border: Border.all(color: MyColors.accent, width: 2),
                                 color: Colors.white,
                                 shape: BoxShape.circle
                               ),
                             ),
                             Expanded(
                               child: Container(width: 2, color: MyColors.accent),
                             ),
                             Container(
                               width : 15, height: 15,
                               decoration: BoxDecoration(
                                   color: MyColors.accent,
                                   shape: BoxShape.circle
                               ),
                             ),
                             Container(height: 5),
                           ],
                         ),
                         Container(width: 20),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Text("Solo (SOC)", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                               Text("Adi Soemarmo", style: MyText.caption(context)!.copyWith(color: MyColors.grey_80)),
                               Spacer(),
                               Text("Jakarta (CGK)", style: MyText.body2(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                               Text("Soekarno Hatta Intl Airport", style: MyText.caption(context)!.copyWith(color: MyColors.grey_80)),
                             ],
                           ),
                         )
                       ],
                     ),
                    ),
                    Divider(height: 0),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("duration 1 hour 15 minutes", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 3),
              elevation: 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(child: Icon(Icons.work, color: MyColors.primary),
                          padding: EdgeInsets.all(20),
                        ),
                        Text("Pre-Flight Info", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                        Spacer(),
                        Transform.rotate(
                          angle: animation1.value * math.pi / 180,
                          child: IconButton(
                            icon: Icon(Icons.expand_more, color: MyColors.grey_60),
                            onPressed: (){togglePanel1();},
                          ),
                        ),
                        Container(width: 10)
                      ],
                    ),
                    SizeTransition(
                      sizeFactor: animation1View,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                            child: Text(MyStrings.lorem_ipsum, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                          ),
                          Divider(height: 0),
                          Row(
                            children: <Widget>[
                              Spacer(),
                              TextButton(
                                style: TextButton.styleFrom(primary: Colors.transparent),
                                child: Text("HIDE", style: TextStyle(color: Colors.grey[800]),),
                                onPressed: (){togglePanel1();},
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 3),
              elevation: 3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(child: Icon(Icons.person, color: MyColors.primary),
                          padding: EdgeInsets.all(20),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Passenger(s)", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                            Container(height: 2),
                            Text("2 Adult 1 Infant", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                          ],
                        ),
                        Spacer(),
                        Transform.rotate(
                          angle: animation2.value * math.pi / 180,
                          child: IconButton(
                            icon: Icon(Icons.expand_more, color: MyColors.grey_60),
                            onPressed: (){togglePanel2();},
                          ),
                        ),
                        Container(width: 10)
                      ],
                    ),
                    Divider(height: 0),
                    SizeTransition(
                      sizeFactor: animation2View,
                      child: Column(
                        children: <Widget>[
                          Container(height: 10),
                          Row(
                            children: <Widget>[
                              Container(
                                child:Text("1.", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Mr. ANDERSON THOMAS", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90)),
                                ],
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                color: MyColors.grey_5,
                                child: Text("adult", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                              ),
                              Container(width: 10)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child:Text("2.", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Mrs. GARCIA LEWIS", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90)),
                                ],
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                color: MyColors.grey_5,
                                child: Text("adult", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                              ),
                              Container(width: 10)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child:Text("3.", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("SOPHIA TURNER", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90)),
                                ],
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                color: MyColors.grey_5,
                                child: Text("infant", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                              ),
                              Container(width: 10)
                            ],
                          ),
                          Container(height: 10),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
            Container(height: 10)
          ],
        ),
      ),
    );
  }

  void togglePanel1(){
    if(!expand1){
      controller1.forward();
    } else {
      controller1.reverse();
    }
    expand1 = !expand1;
  }

  void togglePanel2(){
    if(!expand2){
      controller2.forward();
    } else {
      controller2.reverse();
    }
    expand2 = !expand2;
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
}

