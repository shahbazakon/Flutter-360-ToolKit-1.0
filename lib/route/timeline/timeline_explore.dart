
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TimelineExploreRoute extends StatefulWidget {

  TimelineExploreRoute();

  @override
  TimelineExploreRouteState createState() => new TimelineExploreRouteState();
}


class TimelineExploreRouteState extends State<TimelineExploreRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark
            ),
            backgroundColor: Colors.white, elevation: 2,
            title: Text("Explore", style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: MyColors.grey_80),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: MyColors.grey_80),
                onPressed: () { },
              )
            ]
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(width: 18),
                        Container(width: 60, height: 60, decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ), child: Icon(Icons.add, color: Colors.white, size: 30,)),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_female_1.jpg')), size: 60),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_female_4.jpg')), size: 60),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_male_5.jpg')), size: 60),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_male_8.jpg')), size: 60),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_female_6.jpg')), size: 60),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_male_7.jpg')), size: 60),
                        Container(width: 18),
                        CircleImage(imageProvider: AssetImage(Img.get('photo_female_5.jpg')), size: 60),
                        Container(width: 18),
                      ],
                    ),
                  ),
                  Container(height: 18),
                  Row(
                    children: <Widget>[
                      Container(width: 18),
                      Expanded(
                        child: Card(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                        clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0, margin: EdgeInsets.all(0),
                        child: Container(width: double.infinity, height: 180,
                          color: MyColors.grey_5,
                          child: Image.asset(Img.get('image_12.jpg'), fit: BoxFit.cover ),
                        )
                        ),
                      ),
                      Container(width: 18),
                      Expanded(
                        child: Card(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                            clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0, margin: EdgeInsets.all(0),
                            child: Container(width: double.infinity, height: 180,
                              color: MyColors.grey_5,
                              child: Image.asset(Img.get('image_13.jpg'), fit: BoxFit.cover ),
                            )
                        ),
                      ),
                      Container(width: 18),
                    ],
                  ),
                  Container(height: 18),
                  Row(
                    children: <Widget>[
                      Container(width: 18),
                      Expanded(
                        child: Card(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                        clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0, margin: EdgeInsets.all(0),
                        child: Container(width: double.infinity, height: 180,
                          color: MyColors.grey_5,
                          child: Image.asset(Img.get('image_14.jpg'), fit: BoxFit.cover ),
                        )
                        ),
                      ),
                      Container(width: 18),
                      Expanded(
                        child: Card(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                            clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0, margin: EdgeInsets.all(0),
                            child: Container(width: double.infinity, height: 180,
                              color: MyColors.grey_5,
                              child: Image.asset(Img.get('image_15.jpg'), fit: BoxFit.cover ),
                            )
                        ),
                      ),
                      Container(width: 18),
                    ],
                  ),
                  Container(height: 18),
                  Row(
                    children: <Widget>[
                      Container(width: 18),
                      Expanded(
                        child: Card(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                        clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0, margin: EdgeInsets.all(0),
                        child: Container(width: double.infinity, height: 180,
                            color: MyColors.grey_5,
                            child: Image.asset(Img.get('image_26.jpg'), fit: BoxFit.cover ),
                          )
                        ),
                      ),
                      Container(width: 18),
                      Expanded(
                        child: Card(shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                            clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 0, margin: EdgeInsets.all(0),
                            child: Container(width: double.infinity, height: 180,
                              color: MyColors.grey_5,
                              child: Image.asset(Img.get('image_30.jpg'), fit: BoxFit.cover ),
                            )
                        ),
                      ),
                      Container(width: 18),
                    ],
                  ),
                  Container(height: 18),
                ],
              );
            }, childCount: 1
            ),
          )
        ],
      ),
    );
  }

}

