import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleMediumRoute extends StatefulWidget {

  ArticleMediumRoute();

  @override
  ArticleMediumRouteState createState() => new ArticleMediumRouteState();
}


class ArticleMediumRouteState extends State<ArticleMediumRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      floatingActionButton: FloatingActionButton(heroTag: "fab1",
        backgroundColor: Colors.white, elevation: 3,
        child: Icon(Icons.thumb_up, color: Colors.grey[900],),
        onPressed: () { print('Clicked'); },
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,
              ),
              backgroundColor: MyColors.grey_10,
              floating: true, pinned: false, snap: false,
              title: Row(
                children: <Widget>[
                  CircleImage(
                    imageProvider: AssetImage(Img.get('photo_male_3.jpg')),
                    size: 40,
                  ),
                  Container(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Miller Wilson", style: MyText.body2(context)!.copyWith(
                          color: MyColors.grey_80)
                      ),
                      Container(height: 2),
                      Row(
                        children: <Widget>[
                          Text("Jul 13", style: MyText.caption(context)!.copyWith(
                              color: MyColors.grey_60)
                          ),
                          Container(width:6, height:6,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: MyColors.grey_40, borderRadius: BorderRadius.circular(15.0)
                          )),
                          Text("5 min read", style: MyText.caption(context)!.copyWith(
                              color: MyColors.grey_60)
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              leading: IconButton(icon: Icon(Icons.arrow_back, color: MyColors.grey_60),
                onPressed: () { Navigator.pop(context);},
              ),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.share, color: MyColors.grey_60), onPressed: () {}),
                IconButton(icon: Icon(Icons.bookmark_border, color: MyColors.grey_60), onPressed: () {}),
              ]
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(MyStrings.short_lorem_ipsum, style: MyText.display1(context)!.copyWith(
                          color: MyColors.grey_90, fontWeight: FontWeight.bold
                      )),
                    ),
                    Container(height: 5),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text("Aliquam ac elit, vestibulum turpis.", style: MyText.title(context)!.copyWith(
                          color: MyColors.grey_40
                      )),
                    ),
                    Container(height: 20),
                    Container(
                      child: Image.asset(Img.get('image_11.jpg'), fit: BoxFit.cover,),
                      width: double.infinity, height: 250,
                    ),
                    Container(height: 5),
                    Container(
                      child: Text("Image source : pexels.com", textAlign: TextAlign.center,
                          style: MyText.caption(context)!.copyWith(color: MyColors.grey_80)
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(MyStrings.very_long_lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.medium(context).copyWith(color: MyColors.grey_80)
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(width: 15),
                          Text("3,556 Likes", textAlign: TextAlign.center,
                              style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)
                          ),
                          Spacer(),
                          IconButton(icon: const Icon(Icons.more_vert, color: MyColors.grey_60), onPressed: () {}),
                        ],
                      ),
                    ),
                    Container(height: 50),
                  ],
                ),
              );
            },
                childCount: 1
            ),
          )
        ],
      ),
    );
  }
}

