import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class CardTimelineRoute extends StatefulWidget {

  CardTimelineRoute();

  @override
  CardTimelineRouteState createState() => new CardTimelineRouteState();
}


class CardTimelineRouteState extends State<CardTimelineRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Timeline") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
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
                              imageProvider: AssetImage(Img.get('photo_female_2.jpg')),
                              size: 55,
                            ),
                            Container(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Bsilico Eat", style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18, color: Colors.grey[900]
                                )),
                                Container(height: 5),
                                Text("June 1, 2015", style: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]
                                ),),
                              ],
                            )
                          ],
                        ),
                        Container(height: 10),
                        Container(
                          child: Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                              fontSize: 18, color: Colors.grey[700]
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 15),
                  Image.asset(Img.get('image_7.jpg'),
                    height: 150, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    height: 55,
                    child: Row(
                      children: <Widget>[
                        Container(width: 5),
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.mode_comment, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        Text("12", style: TextStyle(
                          fontWeight: FontWeight.w500,
                            fontSize: 18, color: Colors.grey[700]
                        )),
                        Container(width: 15),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[300], height: 0),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Sandra Adams", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18, color: Colors.grey[900]
                        )),
                        Container(height: 5),
                        Text(MyStrings.middle_lorem_ipsum, maxLines: 1, overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 18, color: Colors.grey[700])
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(height: 5),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('image_8.jpg'),
                    height: 150, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    height: 55,
                    child: Row(
                      children: <Widget>[
                        Container(width: 5),
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.mode_comment, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        Text("12", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18, color: Colors.grey[700]
                        )),
                        Container(width: 15),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[100],
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleImage(
                          imageProvider: AssetImage(Img.get('photo_female_8.jpg')),
                          size: 40,
                        ),
                        Container(width: 15,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Laura Scot", style: TextStyle(
                                  fontSize: 16, color: Colors.grey[800]
                              )),
                              Container(height: 4),
                              Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                                  fontSize: 15, color: Colors.grey[600]
                              )
                              )
                            ],
                          ),
                        ),
                        Container(width: 10,),
                        Container(
                          child: Text("1d"),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[400], height: 0),
                  Container(
                    color: Colors.grey[100],
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleImage(
                          imageProvider: AssetImage(Img.get('photo_male_8.jpg')),
                          size: 40,
                        ),
                        Container(width: 15,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("David Park", style: TextStyle(
                                  fontSize: 16, color: Colors.grey[800]
                              )),
                              Container(height: 4),
                              Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                                  fontSize: 15, color: Colors.grey[600]
                              )
                              )
                            ],
                          ),
                        ),
                        Container(width: 10,),
                        Container(
                          child: Text("1d"),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[400], height: 0),
                  Container(
                    color: Colors.grey[100],
                    child: Row(
                      children: <Widget>[
                        Container(width: 15),
                        Text("VIEW MORE COMMENTS", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18, color: Colors.grey[700]
                        )),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.expand_more, color: Colors.grey[700]),
                          onPressed: (){},
                        ),
                        Container(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 5),
          ],
        ),
      ),
    );
  }
}

