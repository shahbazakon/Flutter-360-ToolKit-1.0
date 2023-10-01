import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TimelineSimpleRoute extends StatefulWidget {

  TimelineSimpleRoute();

  @override
  TimelineSimpleRouteState createState() => new TimelineSimpleRouteState();
}


class TimelineSimpleRouteState extends State<TimelineSimpleRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.green[700], systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Activity"),
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
      floatingActionButton: FloatingActionButton(
        heroTag: "fab3",
        backgroundColor: Colors.green[700],
        elevation: 3,
        child: Icon(Icons.create, color: Colors.white,),
        onPressed: () { print('Clicked'); },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
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
                Container(width: 5),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
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
                Container(width: 5),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
                  child:
                  Padding(
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
                Container(width: 5),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
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
                Container(width: 5),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
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
                Container(width: 5),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
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
                Container(width: 5),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(width: 5),
                Expanded(
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
                Container(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

