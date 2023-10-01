import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleBigHeaderRoute extends StatefulWidget {

  ArticleBigHeaderRoute();

  @override
  ArticleBigHeaderRouteState createState() => new ArticleBigHeaderRouteState();
}


class ArticleBigHeaderRouteState extends State<ArticleBigHeaderRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
              ),
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Stack(
                    children: <Widget>[
                      Image.asset(Img.get('image_27.jpg'),fit: BoxFit.fitWidth, height: double.infinity, width: double.infinity),
                      Container(height: double.infinity, width: double.infinity, color: Colors.black.withOpacity(0.2)),
                    ],
                  ),
              ),
              bottom: PreferredSize(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Fusce dictum tristique elit nec iaculis".toUpperCase(), style: MyText.display1(context)!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold
                        )),
                        Container(height: 15),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          color: Colors.white,
                          child: Text("TRAVEL", style: MyText.subhead(context)!.copyWith(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  preferredSize: Size.fromHeight(200)
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
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
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify, style: MyText.medium(context).copyWith(color: MyColors.grey_80)),
                ),
                Image.asset(Img.get('image_15.jpg'),fit: BoxFit.fitWidth, height: 200, width: double.infinity),
                Text("Image source : pexels.com", textAlign: TextAlign.justify, style: MyText.caption(context)!.copyWith(color: MyColors.grey_80)),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify, style: MyText.medium(context).copyWith(color: MyColors.grey_80)),
                ),
                Divider(height: 0, color: MyColors.grey_10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.comment, color: MyColors.grey_60),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.bookmark_border, color: MyColors.grey_60),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.volume_up, color: MyColors.grey_60),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.visibility, color: MyColors.grey_60),
                      onPressed: (){},
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

