
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DashboardFlightRoute extends StatefulWidget {

  DashboardFlightRoute();

  @override
  DashboardFlightRouteState createState() => new DashboardFlightRouteState();
}


class DashboardFlightRouteState extends State<DashboardFlightRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.orange[500])),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Colors.orange[500],
                width: double.infinity, height: 270,
                child: Image.asset(Img.get('world_map.png'),fit: BoxFit.cover),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AppBar(
                    elevation: 0, backgroundColor: Colors.transparent,
                    systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarBrightness: Brightness.dark
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () { Navigator.pop(context);},
                    ),
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ]
                ),
                Text("Where will go?", style: MyText.headline(context)!.copyWith(color: Colors.white)),
                Container(height: 20),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(1)),
                  color: Colors.white, elevation: 2,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: <Widget>[
                        IconButton(icon: const Icon(Icons.flight_takeoff, color: MyColors.grey_40), onPressed: (){},),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration.collapsed(
                                hintText: 'Origin'
                            ),
                          ),
                        ),
                        IconButton(icon: const Icon(Icons.search, color: MyColors.grey_40), onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(1)),
                  color: Colors.white, elevation: 2,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.flight_land, color: MyColors.grey_40), onPressed: (){},),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration.collapsed(
                                hintText: 'Destination'
                            ),
                          ),
                        ),
                        IconButton(icon: Icon(Icons.search, color: MyColors.grey_40), onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(1)),
                  color: Colors.white, elevation: 2,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        child: Text("Departure", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.event, color: MyColors.grey_40),
                                Container(width: 10),
                                Text("Thus, 10 Mar 2018", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60))
                              ],
                            ),
                            Container(height: 10),
                            Container(width: double.infinity, height: 1, color: MyColors.grey_20)
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        child: Text("Passenger", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, color: MyColors.grey_40),
                                Container(width: 10),
                                Text("2 adult", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60))
                              ],
                            ),
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, color: MyColors.grey_40),
                                Container(width: 10),
                                Text("2 child", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60))
                              ],
                            ),
                            Container(height: 10),
                            Container(width: double.infinity, height: 1, color: MyColors.grey_20)
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        child: Text("Cabin class", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.event_seat, color: MyColors.grey_40),
                                Container(width: 10),
                                Text("Economy class", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60))
                              ],
                            ),
                            Container(height: 10),
                          ],
                        ),
                      ),
                      Container(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

