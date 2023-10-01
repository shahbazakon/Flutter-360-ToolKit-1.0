import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/circle_image.dart';

class TimelinePathRoute extends StatefulWidget {

  TimelinePathRoute();

  @override
  TimelinePathRouteState createState() => new TimelinePathRouteState();
}


class TimelinePathRouteState extends State<TimelinePathRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.deepOrange[900], systemOverlayStyle: SystemUiOverlayStyle(
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
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.lightGreen[400],
                            child: Icon(Icons.chat, size: 10, color: Colors.white),
                        )
                      )
                    ],
                  ),
                ),
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
                        Row(
                          children: <Widget>[
                            Text("Taylor W ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("posted a", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                            Container(width: 3),
                            Text("Note", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            ))
                          ],
                        ),
                        Container(height: 5),
                        Text("Just now", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Container(width: 1, color: Colors.grey[300], height: 60),
                ),
                Expanded(
                  child: Text(
                      MyStrings.middle_lorem_ipsum, style: TextStyle(fontSize: 14, color: Colors.grey[600])
                  ),
                ),
                Container(width: 10)
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.lightBlue[400],
                            child: Icon(Icons.person, size: 10, color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    CircleImage(
                      imageProvider: AssetImage(Img.get('photo_male_8.jpg')),
                      size: 40,
                    ),
                    Container(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("C. Northrop ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("is now following you ", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                          ],
                        ),
                        Container(height: 5),
                        Text("22 minutes ago", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.lightBlue[400],
                            child: Icon(Icons.person, size: 10, color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    CircleImage(
                      imageProvider: AssetImage(Img.get('photo_male_2.jpg')),
                      size: 40,
                    ),
                    Container(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Nathaniel ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("is now following you ", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                          ],
                        ),
                        Container(height: 5),
                        Text("30 minutes ago", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.pink[400],
                            child: Icon(Icons.photo_camera, size: 10, color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),
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
                        Row(
                          children: <Widget>[
                            Text("Taylor W ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("publish a", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                            Container(width: 3),
                            Text("Photo", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            ))
                          ],
                        ),
                        Container(height: 5),
                        Text("Just now", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Container(width: 1, color: Colors.grey[300], height: 160),
                ),
                Expanded(
                  child: Image.asset(Img.get('image_2.jpg'),
                    height: 140, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                Container(width: 15)
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.amber[500],
                            child: Icon(Icons.location_on, size: 10, color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),
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
                        Row(
                          children: <Widget>[
                            Text("Lillie Hoyos ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("in ", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                            Text("Bangkok, Thailand", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        Container(height: 5),
                        Text("08.30 am yesterday", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.lightGreen[400],
                            child: Icon(Icons.chat, size: 10, color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),
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
                        Row(
                          children: <Widget>[
                            Text("Homer J. Allen ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("posted a", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                            Container(width: 3),
                            Text("Note", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            ))
                          ],
                        ),
                        Container(height: 5),
                        Text("10.15 am yesterday", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Container(width: 1, color: Colors.grey[300], height: 120),
                ),
                Expanded(
                  child: Text(
                      MyStrings.lorem_ipsum, style: TextStyle(fontSize: 14, color: Colors.grey[600])
                  ),
                ),
                Container(width: 10)
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 55,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(width: 1, color: Colors.grey[300], height: 60),
                      Container(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.amber[500],
                            child: Icon(Icons.location_on, size: 10, color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),
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
                        Row(
                          children: <Widget>[
                            Text("Lillie Hoyos ", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                            Text("in ", style: TextStyle(
                                fontSize: 14, color: Colors.grey[500]
                            )),
                            Text("Jiangsu, China", style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[400], fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        Container(height: 5),
                        Text("2 days ago", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

