import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleCardRoute extends StatefulWidget {

  ArticleCardRoute();

  @override
  ArticleCardRouteState createState() => new ArticleCardRouteState();
}


class ArticleCardRouteState extends State<ArticleCardRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.orange[500],
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
              ),
              expandedHeight: 150.0,
              floating: false, pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true, background: Container(color: Colors.orange[500]),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {Navigator.pop(context); },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share), onPressed: () {},
                ),// overflow menu
                IconButton(
                  icon: Icon(Icons.bookmark_border), onPressed: () {},
                ),
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container( color: MyColors.grey_10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 180, color: Colors.orange[500],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  transform: Matrix4.translationValues(0.0, -180.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Mauris Ultricies Augue Sit Amet Est Sollicitudin Laoreet.", style: MyText.headline(context)!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w500
                        )),
                      ),
                      Container(height: 10),
                      Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                          elevation: 2,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(MyStrings.very_long_lorem_ipsum, textAlign: TextAlign.justify, style: MyText.subhead(context)!.copyWith(
                                color: MyColors.grey_80
                            )),
                          )
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

