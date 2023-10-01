
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DashboardStatisticsRoute extends StatefulWidget {

  DashboardStatisticsRoute();

  @override
  DashboardStatisticsRouteState createState() => new DashboardStatisticsRouteState();
}


class DashboardStatisticsRouteState extends State<DashboardStatisticsRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        iconTheme: IconThemeData(color: MyColors.grey_60),
        title: Text("Dashboard", style: MyText.title(context)!.copyWith(
          color: MyColors.grey_60
        )),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),// overflow menu
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(value: "Settings", child: Text("Settings"),),
              ],
            )
          ]
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.lightGreen[500], child: Icon(Icons.person, color: Colors.white,),
                          ),
                          Container(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("92776", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Container(height: 5),
                              Text("Viewer", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.indigo[400], child: Icon(Icons.file_download, color: Colors.white,),
                          ),
                          Container(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("52791", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Container(height: 5),
                              Text("Downloads", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 5),
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.red[300], child: Icon(Icons.shopping_basket, color: Colors.white,),
                          ),
                          Container(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("4000+", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Container(height: 5),
                              Text("Products", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.lightGreen[500], child: Icon(Icons.description, color: Colors.white,),
                          ),
                          Container(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("4429", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Container(height: 5),
                              Text("Reports", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 5),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
              color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Recent Activity", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          Icon(Icons.add, color: MyColors.primary)
                        ],
                      ),
                    ),
                    Divider(height: 0),
                    Container(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Post a Product", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          Text("16 Feb 18", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Update Report", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          Text("28 Jan 18", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Share Story", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          Text("17 Jan 18", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Monthly Download", style: MyText.body2(context)!.copyWith(color: MyColors.grey_60),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          Text("10 Jan 18", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(height: 15),
                    Divider(height: 0),
                    Container( width: double.infinity, padding: EdgeInsets.symmetric(vertical: 8),
                      child: TextButton(
                        style: TextButton.styleFrom(primary: Colors.transparent),
                        child: Text("See More", style: TextStyle(color: MyColors.primary)),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(height: 5),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
              color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset(Img.get('img_social_twitter.png')),
                      width: 40, height: 40,
                    ),
                    Container(width: 10),
                    Container(
                      child: Image.asset(Img.get('img_social_youtube.png')),
                      width: 40, height: 40,
                    ),
                    Container(width: 10),
                    Container(
                      child: Image.asset(Img.get('img_social_facebook.png')),
                      width: 40, height: 40,
                    ),
                    Container(width: 10),
                    Container(
                      child: Image.asset(Img.get('img_social_instagram.png')),
                      width: 40, height: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

