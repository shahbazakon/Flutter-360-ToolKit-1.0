import 'dart:async';
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/review.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class CardScrollingRoute extends StatefulWidget {

  CardScrollingRoute();

  @override
  CardScrollingRouteState createState() => new CardScrollingRouteState();
}


class CardScrollingRouteState extends State<CardScrollingRoute> with TickerProviderStateMixin{

  bool expand = false;
  late AnimationController controller;
  late Animation<double> animation, animationView;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 600),);

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
    List<Review> items = Dummy.getReviews();

    return new Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Coffee Shop") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('image_24.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Cafe Badilico", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                              Container(height: 5),
                              Row(
                                children: <Widget>[
                                  StarRating(starCount: 5, rating: 4.7, color: Colors.yellow, size: 20), Container(width: 5),
                                  Text("4.7 (51)", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                                ],
                              ),
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(height: 1),
                  ),
                  SizeTransition(
                    sizeFactor: animationView,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        children: items.map((Review e) {
                          return Column(
                            children: [
                              Row(
                                children: <Widget>[
                                  CircleImage(
                                    imageProvider: AssetImage(Img.get(e.image!)),
                                    size: 45,
                                  ),
                                  Container(width: 15),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(e.name!, style: MyText.subtitle(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w500)),
                                        Container(height: 5),
                                        Text(e.brief!, style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  StarRating(starCount: 5, rating: e.rating!, color: Colors.yellow, size: 16), Container(width: 10),
                                  Text(e.timeRating!, style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                                ],
                              ),
                              Container(height: 15),
                              Text(e.comment!, style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                              Container(height: 25),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  )
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

