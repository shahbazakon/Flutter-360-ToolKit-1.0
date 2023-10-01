import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleFoodRoute extends StatefulWidget {

  ArticleFoodRoute();

  @override
  ArticleFoodRouteState createState() => new ArticleFoodRouteState();
}


class ArticleFoodRouteState extends State<ArticleFoodRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
              ),
              floating: false, pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(Img.get('image_24.jpg'),fit: BoxFit.cover),
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
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Soy-Glazed Salmon", style: MyText.headline(context)!.copyWith(
                    color: MyColors.grey_90, fontWeight: FontWeight.bold
                )),
                Container(height: 5),
                Text(MyStrings.medium_lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                  color: MyColors.grey_40,
                )),
                Divider(),
                Column(
                  children: <Widget>[
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text("CARB"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text("40 gr"),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            height: 15,
                            child: LinearProgressIndicator(
                              value: 0.4,
                              valueColor: AlwaysStoppedAnimation<Color?>(Colors.green[600]),
                              backgroundColor: Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text("PROT"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text("80 gr"),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            height: 15,
                            child: LinearProgressIndicator(
                              value: 0.75,
                              valueColor: AlwaysStoppedAnimation<Color?>(Colors.green[600]),
                              backgroundColor: Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text("FAT S"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text("33 gr"),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            height: 15,
                            child: LinearProgressIndicator(
                              value: 0.2,
                              valueColor: AlwaysStoppedAnimation<Color?>(Colors.green[600]),
                              backgroundColor: Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text("FAT U"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text("34 gr"),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            height: 15,
                            child: LinearProgressIndicator(
                              value: 0.34,
                              valueColor: AlwaysStoppedAnimation<Color?>(Colors.green[600]),
                              backgroundColor: Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 10),
                  ],
                ),
                Divider(),
                Text("Description", style: MyText.medium(context).copyWith(
                    color: MyColors.grey_90, fontWeight: FontWeight.bold
                )),
                Container(height: 10),
                Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify, style: MyText.medium(context).copyWith(
                  color: MyColors.grey_60,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

