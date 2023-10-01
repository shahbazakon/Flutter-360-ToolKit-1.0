
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ProfileBlueAppbarRoute extends StatefulWidget {

  ProfileBlueAppbarRoute();

  @override
  ProfileBlueAppbarRouteState createState() => new ProfileBlueAppbarRouteState();
}


class ProfileBlueAppbarRouteState extends State<ProfileBlueAppbarRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          elevation: 0, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Profile"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(value: "Settings", child: Text("Settings"),),
              ],
            )
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container( width: double.infinity, padding: EdgeInsets.all(20),
              color: MyColors.primary,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Img.get("photo_male_8.jpg")),
                    ),
                  ),
                  Container(height: 15),
                  Text("Damian Johnsonn", style: MyText.title(context)!.copyWith(color: Colors.white)),
                  Container(height: 5),
                  Text("UX Designer", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_10)),
                ],
              ),
            ),
            Container(height: 20),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Text("1.5 K", style: MyText.title(context)!.copyWith(color: MyColors.grey_90)),
                      Container(height: 5),
                      Text("Posts", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Text("17.8 K", style: MyText.title(context)!.copyWith(color: MyColors.grey_90)),
                      Container(height: 5),
                      Text("Followers", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Text("1.3 K", style: MyText.title(context)!.copyWith(color: MyColors.grey_90)),
                      Container(height: 5),
                      Text("Following", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60))
                    ],
                  ),
                ),
              ],
            ),
            Container(height: 20),
            Divider(height: 0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Photos", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                  Container(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Image.asset(Img.get('image_5.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                        Image.asset(Img.get('image_6.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                        Image.asset(Img.get('image_7.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                        Image.asset(Img.get('image_8.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                        Image.asset(Img.get('image_10.jpg'), width: 90, height: 90, fit: BoxFit.cover)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Post", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Image.asset(Img.get('photo_male_8.jpg'), width: 40, height: 40, fit: BoxFit.cover),
                      Container(width : 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Damian Johnson posted a photo", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                            Container(height: 5),
                            Row(
                              children: <Widget>[
                                Icon(Icons.event, color: MyColors.grey_20, size: 15), Container(width : 5),
                                Text("25 minutes ago", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(height: 10),
                  Image.asset(Img.get('image_12.jpg'), width: double.infinity, height: 240, fit: BoxFit.cover),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

