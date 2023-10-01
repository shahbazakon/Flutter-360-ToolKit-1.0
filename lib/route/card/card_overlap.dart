import 'dart:core';

import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class CardOverlapRoute extends StatefulWidget {

  CardOverlapRoute();

  @override
  CardOverlapRouteState createState() => new CardOverlapRouteState();
}


class CardOverlapRouteState extends State<CardOverlapRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.black)),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    color: MyColors.primary,
                    width: double.infinity, height: 256,
                    foregroundDecoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
                    child: Image.asset(Img.get('image_8.jpg'),fit: BoxFit.cover),
                  ),
                  Container(
                    width: double.infinity, height: 256,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(Img.get('img_wizard_1.png'),width: 80, height: 80, color : Colors.white),
                        Text("Nature Park", style: MyText.title(context)!.copyWith(color: Colors.white))
                      ],
                    ),
                  ),
                  Row(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.white),
                      onPressed: () { Navigator.pop(context); },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.white),
                      onPressed: (){},
                    ),
                  ]),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                      color: Colors.white, elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Facilities", style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                            Container(height: 25),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_cafe, color: MyColors.grey_40), Container(width: 10),
                                Text("Food & Cafe", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40))
                              ],
                            ),
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_florist, color: MyColors.grey_40), Container(width: 10),
                                Text("Fresh Air", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40))
                              ],
                            ),
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Icon(Icons.airport_shuttle, color: MyColors.grey_40), Container(width: 10),
                                Text("Parking Area", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40))
                              ],
                            ),
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Icon(Icons.beach_access, color: MyColors.grey_40), Container(width: 10),
                                Text("Cozy Canopy", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40))
                              ],
                            ),
                            Container(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 5),
                    Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                      color: Colors.white, elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Address", style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                            Container(height: 10),
                            Text("14321 Saddle Wood Dr, North Little Rock \nAR, 72117", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                            Container(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 5),
                    Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                      color: Colors.white, elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Description", style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                            Container(height: 10),
                            Text(MyStrings.long_lorem_ipsum, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                            Container(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}