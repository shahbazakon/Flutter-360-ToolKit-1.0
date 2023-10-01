import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class CardOutlinedRoute extends StatefulWidget {

  CardOutlinedRoute();

  @override
  CardOutlinedRouteState createState() => new CardOutlinedRouteState();
}


class CardOutlinedRouteState extends State<CardOutlinedRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Outlined") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: MyColors.accent, width: 1,),
              ),
              elevation: 0,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: MyColors.primary, width: 2,),
              ),
              elevation: 0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Fusce dictum tristique", style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[800]
                    ),),
                    Container(height: 10),
                    Container(
                      child: Text(MyStrings.lorem_ipsum, style: TextStyle(
                          fontSize: 15, color: Colors.grey[700]
                      )),
                    ),
                    Container(height: 10),
                  ],
                ),
              ),
            ),
            Container(height: 5),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: MyColors.grey_20, width: 1,),
                    ),
                    elevation: 0,
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: MyColors.grey_20, width: 1,),
                      ),
                      elevation: 0,
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
            Container(height: 10),
          ],
        ),
      ),
    );
  }
}

