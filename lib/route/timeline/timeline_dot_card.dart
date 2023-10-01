import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TimelineDotCardRoute extends StatefulWidget {

  TimelineDotCardRoute();

  @override
  TimelineDotCardRouteState createState() => new TimelineDotCardRouteState();
}


class TimelineDotCardRouteState extends State<TimelineDotCardRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          backgroundColor: Colors.indigo[600], systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Path"),
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
          ]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 115),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.lightGreen[400],
                        )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_female_1.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Taylor W ", style: MyText.caption(context)!.copyWith(
                                        color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("posted a", style: MyText.caption(context)!.copyWith(color: Colors.grey[500]
                                      )),
                                      Container(width: 3),
                                      Text("Note", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      ))
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("Just now", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                          Container(height: 10),
                          Text(MyStrings.middle_lorem_ipsum, style: MyText.caption(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 64),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.lightBlue[400],
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_male_8.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("C. Northrop ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("is now following you ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.grey[500]
                                      )),
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("22 minutes ago", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 64),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.lightBlue[400],
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_male_2.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Nathaniel ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("is now following you ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.grey[500]
                                      )),
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("22 minutes ago", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 215),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red[400],
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_female_1.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Taylor W ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("posted a", style: MyText.caption(context)!.copyWith(color: Colors.grey[500]
                                      )),
                                      Container(width: 3),
                                      Text("Photo", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      ))
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("Just now", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                          Container(height: 10),
                          Image.asset(Img.get('image_2.jpg'),
                            height: 140, width: double.infinity, fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 64),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.amber[500],
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_female_6.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Lillie Hoyos ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("in ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.grey[500]
                                      )),
                                      Text("Bangkok, Thailand", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("08.30 am yesterday", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 155),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.lightGreen[400],
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_male_7.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Homer J. Allen ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("posted a", style: MyText.caption(context)!.copyWith(
                                          color: Colors.grey[500]
                                      )),
                                      Container(width: 3),
                                      Text("Note", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      ))
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("10.15 am yesterday", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                          Container(height: 10),
                          Text(MyStrings.lorem_ipsum, style: MyText.caption(context)!.copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
            Row(
              children: <Widget>[
                Container(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 64),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.amber[500],
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                    clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleImage(
                                imageProvider: AssetImage(Img.get('photo_female_6.jpg')), size: 35,
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("Lillie Hoyos ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                      Text("in ", style: MyText.caption(context)!.copyWith(
                                          color: Colors.grey[500]
                                      )),
                                      Text("Jiangsu, China", style: MyText.caption(context)!.copyWith(
                                          color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                                      )),
                                    ],
                                  ),
                                  Container(height: 5),
                                  Text("2 days ago", style: TextStyle(fontSize: 10, color: Colors.grey[400])),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

