import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DashboardPayBillRoute extends StatefulWidget {

  DashboardPayBillRoute();

  @override
  DashboardPayBillRouteState createState() => new DashboardPayBillRouteState();
}


class DashboardPayBillRouteState extends State<DashboardPayBillRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 1, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.white,
          title: Text("Payer", style: MyText.title(context)!.copyWith(color: Colors.indigo[500],)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.indigo[500]),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.indigo[500]),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.indigo[500]),
              onPressed: () {},
            ),
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(height: 30),
            Text("Pay Your Bills", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
            Container(height: 10),
            Row(
              children: <Widget>[
                Container(width: 15),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.lightbulb_outline, size: 35, color: Colors.indigo[500]),
                          Container(height: 18),
                          Text("ELECTRICITY", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                        ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.invert_colors, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("WATER", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone_android, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("MOBILE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 6),
            Row(
              children: <Widget>[
                Container(width: 15),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("LANDLINE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.live_tv, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("TV CABLE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.public, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("INTERNET", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 30),
            Text("Purchase Tickets", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
            Container(height: 10),
            Row(
              children: <Widget>[
                Container(width: 15),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.local_movies, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("MOVIE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.event, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("EVENT", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.directions_bike, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("SPORT", style: MyText.body1(context)!.copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 6),
          ],
        ),
      ),
    );
  }
}

