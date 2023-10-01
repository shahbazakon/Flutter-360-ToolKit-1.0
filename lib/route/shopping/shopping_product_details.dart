import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';

class ShoppingProductDetailsRoute extends StatefulWidget {

  ShoppingProductDetailsRoute();

  @override
  ShoppingProductDetailsRouteState createState() => new ShoppingProductDetailsRouteState();
}


class ShoppingProductDetailsRouteState extends State<ShoppingProductDetailsRoute> with TickerProviderStateMixin {

  bool expand1 = true, expand2 = false, expand3 = false;
  late AnimationController controller1, controller2, controller3;
  late Animation<double> animation1, animation1View;
  late Animation<double> animation2, animation2View;
  late Animation<double> animation3, animation3View;

  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);
    controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);
    controller3 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);

    animation1 = Tween(begin: 0.0, end: 180.0).animate(controller1);
    animation1View = CurvedAnimation(parent: controller1, curve: Curves.linear);

    animation2 = Tween(begin: 0.0, end: 180.0).animate(controller2);
    animation2View = CurvedAnimation(parent: controller2, curve: Curves.linear);

    animation3 = Tween(begin: 0.0, end: 180.0).animate(controller3);
    animation3View = CurvedAnimation(parent: controller3, curve: Curves.linear);

    controller1.addListener(() { setState(() {}); });
    controller2.addListener(() { setState(() {}); });
    controller3.addListener(() { setState(() {}); });

    controller1.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_3,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              expandedHeight: 350,
              floating: false, pinned: true,
              backgroundColor: MyColors.primary,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(Img.get('image_shop_10.jpg'), fit: BoxFit.cover, width: double.infinity),
                    ),
                    Container(height: 120)
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(55),
                child: Container(
                  color: MyColors.primary,
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  constraints: BoxConstraints.expand(height: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Roll-Up Neocity Backpack", style: MyText.title(context)!.copyWith(color: Colors.white)),
                      Container(height: 5),
                      Text("Shop Adidas", style: MyText.body1(context)!.copyWith(color: MyColors.grey_10)),
                      Container(height: 20),
                      Row(children: <Widget>[
                        StarRating(starCount: 5, rating: 3.5, color: Colors.yellow, size: 14),
                        Container(width: 5),
                        Text("381,380", style: MyText.caption(context)!.copyWith(color: MyColors.grey_10)),
                        Spacer(),
                        Text("\$ 80.00", style: MyText.title(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                      ],)
                    ],
                  )
                ),
              ),
              automaticallyImplyLeading: false,
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: <Widget>[
                    Container(width: 15),
                    Icon(Icons.error_outline, size: 25.0, color: MyColors.grey_60),
                    Container(width: 20),
                    Text("Description", style: MyText.medium(context).copyWith(color: MyColors.grey_80)),
                    Spacer(),
                    Transform.rotate(
                      angle: animation1.value * math.pi / 180,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_drop_down, color: MyColors.grey_60),
                        onPressed: (){togglePanel1();},
                      ),
                    ),
                  ],
                ),
              ),
              SizeTransition(
                sizeFactor: animation1View,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(width: 65),
                          Flexible(flex: 1, child: Text(MyStrings.lorem_ipsum, style: MyText.subhead(context))),
                          Container(width: 20)
                        ],
                      ),
                      Container(height: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: MyColors.grey_10, height: 0, thickness: 0.8),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: <Widget>[
                    Container(width: 15),
                    Icon(Icons.chat, size: 25.0, color: MyColors.grey_60),
                    Container(width: 20),
                    Column(
                      children: <Widget>[
                        Text("Reviews", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                      ],
                    ),
                    Spacer(),
                    Transform.rotate(
                      angle: animation1.value * math.pi / 180,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_drop_down, color: MyColors.grey_60),
                        onPressed: (){togglePanel2();},
                      ),
                    ),
                  ],
                ),
              ),
              SizeTransition(
                sizeFactor: animation2View,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(width: 65), StarRating(starCount: 5, rating: 4.0, color: Colors.amber, size: 14),
                          Container(width: 10), Text("Adams Green"),
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Container(width: 65), StarRating(starCount: 5, rating: 5.0, color: Colors.amber, size: 14),
                          Container(width: 10), Text("Anderson Thomas"),
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Container(width: 65), StarRating(starCount: 5, rating: 5.0, color: Colors.amber, size: 14),
                          Container(width: 10), Text("Roberts Turner"),
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Container(width: 65), StarRating(starCount: 5, rating: 4.5, color: Colors.amber, size: 14),
                          Container(width: 10), Text("Evans Collins"),
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Container(width: 65), StarRating(starCount: 5, rating: 5, color: Colors.amber, size: 14),
                          Container(width: 10), Text("Garcia Lewis"),
                        ],
                      ),
                      Container(height: 20),
                    ],
                  ),
                ),
              ),
              Divider(color: MyColors.grey_10, height: 0, thickness: 0.8),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  children: <Widget>[
                    Container(width: 15),
                    Icon(Icons.verified_user, size: 25.0, color: MyColors.grey_60),
                    Container(width: 20),
                    Column(
                      children: <Widget>[
                        Text("Warranty", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                      ],
                    ),
                    Spacer(),
                    Transform.rotate(
                      angle: animation1.value * math.pi / 180,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_drop_down, color: MyColors.grey_60),
                        onPressed: (){togglePanel3();},
                      ),
                    ),
                  ],
                ),
              ),
              SizeTransition(
                sizeFactor: animation3View,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(width: 65),
                          Flexible(flex: 1, child: Text(MyStrings.invoice_address)),
                          Container(width: 20)
                        ],
                      ),
                      Container(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

  void togglePanel3(){
    if(!expand3){
      controller3.forward();
    } else {
      controller3.reverse();
    }
    expand3 = !expand3;
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }

}

