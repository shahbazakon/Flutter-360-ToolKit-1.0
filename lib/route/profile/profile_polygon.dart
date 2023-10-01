import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ProfilePolygonRoute extends StatefulWidget {

  ProfilePolygonRoute();

  @override
  ProfilePolygonRouteState createState() => new ProfilePolygonRouteState();
}


class ProfilePolygonRouteState extends State<ProfilePolygonRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0, systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              floating: false, pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(Img.get('bg_polygon.png'),fit: BoxFit.cover),
              ),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  transform: Matrix4.translationValues(0, 50, 0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage(Img.get("photo_female_6.jpg")),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Container(height: 70),
                Text("Martha Harris", style: MyText.headline(context)!.copyWith(
                    color: Colors.grey[900], fontWeight: FontWeight.bold
                )),
                Container(height: 15),
                Text(MyStrings.medium_lorem_ipsum, textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(
                    color: Colors.grey[900]
                )),
                Container(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      primary: MyColors.accent
                  ),
                  child: Text("FOLLOW", style: TextStyle(color: Colors.white)),
                  onPressed: (){},
                ),
                Container(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8825", style: MyText.title(context)!.copyWith(
                              color: Colors.grey[900], fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Followers", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("1766", style: MyText.title(context)!.copyWith(
                              color: Colors.grey[900], fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Following", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8.5", style: MyText.title(context)!.copyWith(
                              color: Colors.grey[900], fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Social score", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ],
                ),
                Container(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8825", style: MyText.title(context)!.copyWith(
                              color: Colors.grey[900], fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Followers", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("1766", style: MyText.title(context)!.copyWith(
                              color: Colors.grey[900], fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Following", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text("8.5", style: MyText.title(context)!.copyWith(
                              color: Colors.grey[900], fontWeight: FontWeight.bold
                          )),
                          Container(height: 5),
                          Text("Social score", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(height: 50),
                Text(MyStrings.long_lorem_ipsum, textAlign : TextAlign.justify, style: MyText.subhead(context)!.copyWith(
                    color: Colors.grey[900]
                )),
                Container(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

