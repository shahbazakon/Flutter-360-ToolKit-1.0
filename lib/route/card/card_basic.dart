import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class CardBasicRoute extends StatefulWidget {

  CardBasicRoute();

  @override
  CardBasicRouteState createState() => new CardBasicRouteState();
}


class CardBasicRouteState extends State<CardBasicRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic") as PreferredSizeWidget?,
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
                  Image.asset(Img.get('image_7.jpg'),
                    height: 140, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Phasellus a Turpis id Nisi", style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[800]
                        ),),
                        Container(height: 10),
                        Container(
                          child: Text(MyStrings.middle_lorem_ipsum, style: TextStyle(
                              fontSize: 15, color: Colors.grey[700]
                          )),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.transparent),
                        child: Text("SHARE", style: TextStyle(color: MyColors.accent),),
                        onPressed: (){},
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.transparent),
                        child: Text("EXPLORE", style: TextStyle(color: MyColors.accent),),
                        onPressed: (){},
                      )
                    ],
                  ),
                  Container(height: 5)
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
                  Stack(
                    children: <Widget>[
                      Image.asset(Img.get('image_4.jpg'),
                        height: 160, width: double.infinity, fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Aliquet Et Ante",
                                style: TextStyle(color: Colors.white, fontSize: 23)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite, color: Colors.grey[500]),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark, color: Colors.grey[500]),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.share, color: Colors.grey[500]),
                        onPressed: (){},
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(height: 5),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.asset(Img.get('image_8.jpg'),
                              height: 160, width: double.infinity, fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Container(
                                padding: EdgeInsets.all(15),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Aliquet Et Ante",
                                      style: TextStyle(color: Colors.white, fontSize: 23)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.favorite, color: Colors.grey[500]),
                              onPressed: (){},
                            ),
                            IconButton(
                              icon: Icon(Icons.bookmark, color: Colors.grey[500]),
                              onPressed: (){},
                            ),
                            IconButton(
                              icon: Icon(Icons.share, color: Colors.grey[500]),
                              onPressed: (){},
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(width: 2),
                Expanded(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Image.asset(Img.get('image_9.jpg'),
                                height: 160, width: double.infinity, fit: BoxFit.cover,
                              ),
                              Positioned.fill(
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text("Aliquet Et Ante",
                                        style: TextStyle(color: Colors.white, fontSize: 23)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.favorite, color: Colors.grey[500]),
                                onPressed: (){},
                              ),
                              IconButton(
                                icon: Icon(Icons.bookmark, color: Colors.grey[500]),
                                onPressed: (){},
                              ),
                              IconButton(
                                icon: Icon(Icons.share, color: Colors.grey[500]),
                                onPressed: (){},
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
            Container(height: 5),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
              color: MyColors.primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Phasellus a Turpis id Nisi", style: TextStyle(
                            fontSize: 24,
                            color: Colors.white
                        ),),
                        Container(height: 10),
                        Container(
                          child: Text(MyStrings.medium_lorem_ipsum, style: TextStyle(
                              fontSize: 15, color: Colors.grey[200]
                          )),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    child: Text("LISTEN NOW", style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Container(height: 5),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
                    color: Colors.teal[800],
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text("Aliquet Et Ante \nMorbi", style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        ),
                        Divider(color: Colors.white, thickness: 0.5, height: 0,),
                        Row(
                          children: <Widget>[
                            Container(width: 15,),
                            Text("March 19, 17", style: TextStyle(color: Colors.white),),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.event, color: Colors.white),
                              onPressed: (){},
                            ),
                            Container(width: 4,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(width: 2),
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
                    color: Colors.orange[800],
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(width: 15,),
                            Text("Call", style: TextStyle(color: Colors.white),),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.call, color: Colors.white),
                              onPressed: (){},
                            ),
                            Container(width: 4,),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text("Vitae Tortor \nSed", style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 10),
          ],
        ),
      ),
    );
  }
}

