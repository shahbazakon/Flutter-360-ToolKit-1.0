import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SettingProfileLightRoute extends StatefulWidget {
  SettingProfileLightRoute();

  @override
  SettingProfileLightRouteState createState() => new SettingProfileLightRouteState();
}

class SettingProfileLightRouteState extends State<SettingProfileLightRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 20),
            Container(
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Adams.G", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
                      Text("View and edit profile", style: MyText.body1(context)!.copyWith(color: MyColors.grey_80)),
                    ],
                  ),
                  Spacer(),
                  CircleImage(
                    imageProvider: AssetImage(Img.get('photo_male_2.jpg')),
                    size:60,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: <Widget>[
                    Text("Credits & Coupons", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w300)),
                    Spacer(),
                    Icon(Icons.picture_in_picture, color: MyColors.grey_60),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: <Widget>[
                    Text("Invite friends", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w300)),
                    Spacer(),
                    Icon(Icons.people_outline, color: MyColors.grey_60),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: <Widget>[
                    Text("Payments", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w300)),
                    Spacer(),
                    Icon(Icons.credit_card, color: MyColors.grey_60),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: <Widget>[
                    Text("List your space", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w300)),
                    Spacer(),
                    Icon(Icons.store, color: MyColors.grey_60),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: <Widget>[
                    Text("Get help", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w300)),
                    Spacer(),
                    Icon(Icons.help_outline, color: MyColors.grey_60),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  children: <Widget>[
                    Text("Give us feedback", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w300)),
                    Spacer(),
                    Icon(Icons.near_me, color: MyColors.grey_60),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
          ],
        ),
      ),
    );
  }
}

