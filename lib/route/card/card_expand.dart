import 'dart:async';
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class CardExpandRoute extends StatefulWidget {

  CardExpandRoute();

  @override
  CardExpandRouteState createState() => new CardExpandRouteState();
}


class CardExpandRouteState extends State<CardExpandRoute> with TickerProviderStateMixin{

  bool expand = false;
  late AnimationController controller;
  late Animation<double> animation, animationView;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);

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
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Expand") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 35, left: 25, right: 25),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('photo_female_4.jpg'),
                    height: 220, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(radius: 25,
                              backgroundImage: AssetImage(Img.get("photo_female_4.jpg")),
                            ),
                            Container(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Alizabeth Part", style: MyText.headline(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
                                  Container(height: 2),
                                  Text("Work contact", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                ],
                              ),
                            ),
                            RotationTransition(
                              turns: animation,
                              child: IconButton(
                                icon: Icon(Icons.expand_less),
                                onPressed: (){
                                  togglePanel();
                                },
                              ),
                            )
                          ],
                        ),
                        SizeTransition(
                          sizeFactor: animationView,
                          child: Column(
                            children: <Widget>[
                              Container(height: 25),
                              Row(
                                children: <Widget>[
                                  Container(child: Icon(Icons.phone, color: MyColors.grey_40, size: 30), width: 50),
                                  Container(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("(650) 555-1234", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w500)),
                                      Container(height: 2),
                                      Text("Mobile", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40))
                                    ],
                                  ),
                                  Spacer(),
                                ],
                              ),
                              Container(height: 20),
                              Row(
                                children: <Widget>[
                                  Container(child: Icon(Icons.email, color: MyColors.grey_40, size: 30), width: 50),
                                  Container(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("heyfromelizabeth@mail.com", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w500)),
                                      Container(height: 2),
                                      Text("Email", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40))
                                    ],
                                  ),
                                  Spacer(),
                                ],
                              ),
                              Container(height: 10),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(height: 5)
                ],
              ),
            ),
            Container(height: 10),
          ],
        ),
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

