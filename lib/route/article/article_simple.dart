import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleSimpleRoute extends StatefulWidget {
  ArticleSimpleRoute();

  @override
  ArticleSimpleRouteState createState() => new ArticleSimpleRouteState();
}

class ArticleSimpleRouteState extends State<ArticleSimpleRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
            ),
            backgroundColor: MyColors.grey_10,
            floating: true, pinned: false, snap: false,
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
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Fusce Aliquam Blandit? Urna Quis Pulvinar. Donec Luctus Tincidunt eu Condimentum",
                          style: MyText.headline(context)!.copyWith(
                          color: MyColors.grey_90, fontWeight: FontWeight.bold
                      )),
                      Container(height: 10),
                      Text("Quisque sapien lorem, vestibulum vitae justo eget, fringilla eleifend nisi. Nam fermentum ipsum vitae ligula",
                          style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_90, fontWeight: FontWeight.w500
                      )),
                      Divider(height: 30),
                      Text(MyStrings.lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)
                      ),
                      Container(height: 20),
                      Container(
                        child: Image.asset(Img.get('image_20.jpg'), fit: BoxFit.cover,),
                        width: double.infinity, height: 200,
                      ),
                      Container(height: 5),
                      Text("Image source : pexels.com", textAlign: TextAlign.center,
                          style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)
                      ),
                      Container(height: 20),
                      Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)
                      ),
                      Container(height: 20),
                      Text(MyStrings.medium_lorem_ipsum, textAlign: TextAlign.start,
                          style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)
                      ),
                      Container(height: 20),
                      Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)
                      ),
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

