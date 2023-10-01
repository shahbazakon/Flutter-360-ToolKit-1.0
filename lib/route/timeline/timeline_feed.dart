import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TimelineFeedRoute extends StatefulWidget {

  TimelineFeedRoute();

  @override
  TimelineFeedRouteState createState() => new TimelineFeedRouteState();
}


class TimelineFeedRouteState extends State<TimelineFeedRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              elevation: 4, floating: true, pinned: true,
              backgroundColor: MyColors.primary,
              title: Text("Feed"),
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
                ),
              ],
              bottom: PreferredSize(
                  child: Container(
                    color: Colors.white,
                    constraints: BoxConstraints.expand(height: 50),
                    child: Row(
                      children: <Widget>[
                        Container(width: 15),
                        Text("All post", style: MyText.subhead(context)!.copyWith(color: Colors.grey)),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.arrow_drop_down, color: Colors.grey,),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  preferredSize: Size.fromHeight(50)
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(1)),
                elevation: 2,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_female_1.jpg')),
                                size: 40,
                              ),
                              Container(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Emma Richmond", style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16, color: Colors.grey[800]
                                  )),
                                  Container(height: 2),
                                  Row(
                                    children: <Widget>[
                                      Text("in", style: TextStyle(
                                          fontSize: 14, color: Colors.grey[500]
                                      )),
                                      Container(width: 3),
                                      Text("Hwy, Carthage", style: TextStyle(
                                          fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      ))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(height: 10),
                          Container(
                            child: Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 10),
                    Divider(color: Colors.grey[300], height: 0),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(width: 5),
                          IconButton(
                            icon: Icon(Icons.thumb_up, color: Colors.green[200], size: 25),
                            onPressed: (){},
                          ),
                          Text("12 likes", style: TextStyle(
                              fontSize: 14, color: Colors.grey[500]
                          )),
                          IconButton(
                            icon: Icon(Icons.chat_bubble, color: Colors.lightBlue[400], size: 25),
                            onPressed: (){},
                          ),
                          Text("4 comments", style: TextStyle(
                              fontSize: 14, color: Colors.grey[500]
                          )),
                          Spacer(),
                          Text("3h ago", style: TextStyle(
                              fontSize: 16, color: Colors.grey[500]
                          )),
                          Container(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 2),
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(1)),
                elevation: 2,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_male_7.jpg')),
                                size: 40,
                              ),
                              Container(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Homer J. Allen", style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16, color: Colors.grey[800]
                                  )),
                                  Container(height: 2),
                                  Row(
                                    children: <Widget>[
                                      Text("in", style: TextStyle(
                                          fontSize: 14, color: Colors.grey[500]
                                      )),
                                      Container(width: 3),
                                      Text("City, Office", style: TextStyle(
                                          fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      ))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(height: 10),
                          Container(
                            child: Text(MyStrings.short_lorem_ipsum, style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 10),
                    Image.asset(Img.get('image_2.jpg'),
                      height: 200, width: double.infinity, fit: BoxFit.cover,
                    ),
                    Divider(color: Colors.grey[300], height: 0),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(width: 5),
                          IconButton(
                            icon: Icon(Icons.thumb_up, color: Colors.green[200], size: 25),
                            onPressed: (){},
                          ),
                          Text("145 likes", style: TextStyle(
                              fontSize: 14, color: Colors.grey[500]
                          )),
                          IconButton(
                            icon: Icon(Icons.chat_bubble, color: Colors.lightBlue[400], size: 25),
                            onPressed: (){},
                          ),
                          Text("12 comments", style: TextStyle(
                              fontSize: 14, color: Colors.grey[500]
                          )),
                          Spacer(),
                          Text("12h ago", style: TextStyle(
                              fontSize: 16, color: Colors.grey[500]
                          )),
                          Container(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 2),
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(1)),
                elevation: 2,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_female_6.jpg')),
                                size: 40,
                              ),
                              Container(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Lillie Hoyos", style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16, color: Colors.grey[800]
                                  )),
                                  Container(height: 2),
                                  Row(
                                    children: <Widget>[
                                      Text("in", style: TextStyle(
                                          fontSize: 14, color: Colors.grey[500]
                                      )),
                                      Container(width: 3),
                                      Text("Easthampton, MA", style: TextStyle(
                                          fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      ))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(height: 10),
                          Container(
                            child: Text(MyStrings.lorem_ipsum, style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 10),
                    Divider(color: Colors.grey[300], height: 0),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(width: 5),
                          IconButton(
                            icon: Icon(Icons.thumb_up, color: Colors.green[200], size: 25),
                            onPressed: (){},
                          ),
                          Text("1k likes", style: TextStyle(
                              fontSize: 14, color: Colors.grey[500]
                          )),
                          IconButton(
                            icon: Icon(Icons.chat_bubble, color: Colors.lightBlue[400], size: 25),
                            onPressed: (){},
                          ),
                          Text("1.3k comments", style: TextStyle(
                              fontSize: 14, color: Colors.grey[500]
                          )),
                          Spacer(),
                          Text("12h ago", style: TextStyle(
                              fontSize: 16, color: Colors.grey[500]
                          )),
                          Container(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

