import 'dart:core';
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DashboardGridFabRoute extends StatefulWidget {

  DashboardGridFabRoute();

  @override
  DashboardGridFabRouteState createState() => new DashboardGridFabRouteState();
}


class DashboardGridFabRouteState extends State<DashboardGridFabRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.primary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container()),
      body: Container(
        color: Colors.grey[100],
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    color: MyColors.primary,
                    width: double.infinity, height: 140,
                    child: Image.asset(Img.get('world_map.png'),fit: BoxFit.cover),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(height: 10),
                          Text("Hi, Miller Wilson", style: MyText.title(context)!.copyWith(color: Colors.white)),
                          Container(height: 5),
                          Text("welcome to MaterialX", style: MyText.caption(context)!.copyWith(color: Colors.grey[200]))
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
                      color: Colors.white,
                      elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: <Widget>[
                            IconButton(icon: const Icon(Icons.search, color: MyColors.grey_60), onPressed: () {}),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration.collapsed(
                                    hintText: 'Find our product'
                                ),
                              ),
                            ),
                            IconButton(icon: const Icon(Icons.menu, color: MyColors.grey_60), onPressed: () {}),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 5),
                    Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                      color: Colors.white,
                      elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab1", elevation: 0, mini: true,
                                      backgroundColor: Colors.lightGreen[500], child: Icon(Icons.person, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("FRIENDS", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab2", elevation: 0, mini: true,
                                      backgroundColor: Colors.yellow[600], child: Icon(Icons.people, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("GROUPS", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab3", elevation: 0, mini: true,
                                      backgroundColor: Colors.purple[400], child: Icon(Icons.location_on, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("NEARBY", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab4", elevation: 0, mini: true,
                                      backgroundColor: Colors.blue[400], child: Icon(Icons.near_me, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("MOMENT", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab5", elevation: 0, mini: true,
                                      backgroundColor: Colors.indigo[300], child: Icon(Icons.crop_original, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("ALBUMS", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab6", elevation: 0, mini: true,
                                      backgroundColor: Colors.green[500], child: Icon(Icons.favorite, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("LIKES", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab7", elevation: 0, mini: true,
                                      backgroundColor: Colors.lightGreen[400], child: Icon(Icons.subject, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("ARTICLES", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab8", elevation: 0, mini: true,
                                      backgroundColor: Colors.orange[300], child: Icon(Icons.textsms, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("REVIEWS", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab9", elevation: 0, mini: true,
                                      backgroundColor: Colors.cyan[300], child: Icon(Icons.fitness_center, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("SPORTS", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab10", elevation: 0, mini: true,
                                      backgroundColor: Colors.teal[500], child: Icon(Icons.credit_card, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("PAYMENT", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab11", elevation: 0, mini: true,
                                      backgroundColor: Colors.deepOrange[300], child: Icon(Icons.star, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("FAVORITES", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    FloatingActionButton(heroTag: "fab12", elevation: 0, mini: true,
                                      backgroundColor: Colors.grey[400], child: Icon(Icons.description, color: Colors.white,),
                                      onPressed: () {},
                                    ),
                                    Container(height: 5),
                                    Text("DRAFT", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 5),
                    Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
                      color: Colors.white,
                      elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Balance", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60),
                                  textAlign: TextAlign.center,
                                ),
                                Text("\$ 730", style: MyText.medium(context).copyWith(color: Colors.green[400], fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(15.0)),
                              child: Text("415 Points", style: MyText.body2(context)!.copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}