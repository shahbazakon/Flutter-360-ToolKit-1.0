import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ProfileImageAppbarRoute extends StatefulWidget {

  ProfileImageAppbarRoute();

  @override
  ProfileImageAppbarRouteState createState() => new ProfileImageAppbarRouteState();
}


class ProfileImageAppbarRouteState extends State<ProfileImageAppbarRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              title: Text("Profile"),
              expandedHeight: 260,
              floating: false, pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(Img.get('photo_female_8.jpg'),fit: BoxFit.cover),
              ),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),// overflow menu
                PopupMenuButton<String>(
                  onSelected: (String value){},
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                  ],
                )
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 15),
                Row(
                  children: <Widget>[
                    Container(width: 40),
                    Text("Irene J. Fritz", style: MyText.headline(context)!.copyWith(color: MyColors.grey_90)),
                  ],
                ),
                Container(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.person, size: 25, color: MyColors.grey_60),
                    Container(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(height: 2),
                          Text("About Me", style: MyText.medium(context).copyWith(color: MyColors.primary, fontWeight: FontWeight.bold)),
                          Container(height: 5),
                          Text(MyStrings.lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                              color: MyColors.grey_60, height: 1.4
                          )),
                        ],
                      ),
                    )
                  ],
                ),
                Container(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.directions_bike, size: 25, color: MyColors.grey_60),
                    Container(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(height: 2),
                          Text("About Me", style: MyText.medium(context).copyWith(color: MyColors.primary, fontWeight: FontWeight.bold)),
                          Container(height: 5),
                          Text("Swimming, playing tennis, cooking are my favorite hobbie", style: MyText.subhead(context)!.copyWith(
                              color: MyColors.grey_60, height: 1.4
                          )),
                        ],
                      ),
                    )
                  ],
                ),
                Container(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.photo_camera, size: 25, color: MyColors.grey_60),
                    Container(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(height: 2),
                          Text("Photos", style: MyText.medium(context).copyWith(color: MyColors.primary, fontWeight: FontWeight.bold)),
                          Container(height: 5),
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

