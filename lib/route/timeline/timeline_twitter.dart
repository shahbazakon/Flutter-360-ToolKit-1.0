
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class TimelineTwitterRoute extends StatefulWidget {

  TimelineTwitterRoute();

  @override
  TimelineTwitterRouteState createState() => new TimelineTwitterRouteState();
}


class TimelineTwitterRouteState extends State<TimelineTwitterRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        heroTag: "fab3",
        backgroundColor: Colors.lightBlue[500],
        elevation: 3,
        child: Icon(Icons.create, color: Colors.white,),
        onPressed: () { print('Clicked'); },
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              backgroundColor: Colors.white, elevation: 2,
              title: Text("Twitter", style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.lightBlue[500]),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: Colors.lightBlue[500]),
                  onPressed: () { },
                )
              ]
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(height: 0),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(Img.get('photo_female_1.jpg'), height: 50, width: 50, fit: BoxFit.cover),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Taylor W ", style: MyText.subhead(context)!.copyWith(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )),
                                  Text("@TaylorW  1m", style: MyText.body1(context)!.copyWith(
                                      color: MyColors.grey_40
                                  )),
                                  Spacer(),
                                  Icon(Icons.expand_more, color: MyColors.grey_40, size: 20),
                                ],
                              ),
                              Text(MyStrings.short_lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.w300
                              )),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.undo, color: MyColors.grey_40, size: 15), Text(" 1", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.repeat, color: MyColors.grey_40, size: 15), Text(" 5", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.favorite, color: MyColors.grey_40, size: 15), Text(" 10", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.chat, color: MyColors.grey_40, size: 15),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(Img.get('photo_male_8.jpg'), height: 50, width: 50, fit: BoxFit.cover),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("C. Northrop ", style: MyText.subhead(context)!.copyWith(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )),
                                  Text("@CNorthrop  2m", style: MyText.body1(context)!.copyWith(
                                      color: MyColors.grey_40
                                  )),
                                  Spacer(),
                                  Icon(Icons.expand_more, color: MyColors.grey_40, size: 20),
                                ],
                              ),
                              Text(MyStrings.medium_lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.w300
                              )),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.undo, color: MyColors.grey_40, size: 15), Text(" 13", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.repeat, color: MyColors.grey_40, size: 15), Text(" 32", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.favorite, color: MyColors.grey_40, size: 15), Text(" 67", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.chat, color: MyColors.grey_40, size: 15),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(Img.get('photo_male_8.jpg'), height: 50, width: 50, fit: BoxFit.cover),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("C. Northrop ", style: MyText.subhead(context)!.copyWith(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )),
                                  Text("@CNorthrop  4m", style: MyText.body1(context)!.copyWith(
                                      color: MyColors.grey_40
                                  )),
                                  Spacer(),
                                  Icon(Icons.expand_more, color: MyColors.grey_40, size: 20),
                                ],
                              ),
                              Text(MyStrings.medium_lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.w300
                              )),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.undo, color: MyColors.grey_40, size: 15), Text(" 2k", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.repeat, color: MyColors.grey_40, size: 15), Text(" 89", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.favorite, color: MyColors.grey_40, size: 15), Text(" 17", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.chat, color: MyColors.grey_40, size: 15),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(Img.get('photo_female_6.jpg'), height: 50, width: 50, fit: BoxFit.cover),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Lillie Hoyos ", style: MyText.subhead(context)!.copyWith(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )),
                                  Text("@LillieH  10m", style: MyText.body1(context)!.copyWith(
                                      color: MyColors.grey_40
                                  )),
                                  Spacer(),
                                  Icon(Icons.expand_more, color: MyColors.grey_40, size: 20),
                                ],
                              ),
                              Text("Mauris sagittis non elit quis", style: MyText.subhead(context)!.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.w300
                              )),
                              Container(height: 10),
                              Image.asset(Img.get('image_18.jpg'),
                                height: 200, width: double.infinity, fit: BoxFit.cover,
                              ),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.undo, color: MyColors.grey_40, size: 15), Text(" 3k", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.repeat, color: MyColors.grey_40, size: 15), Text(" 55", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.favorite, color: MyColors.grey_40, size: 15), Text(" 75", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.chat, color: MyColors.grey_40, size: 15),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(Img.get('photo_male_7.jpg'), height: 50, width: 50, fit: BoxFit.cover),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Homer J. Allen ", style: MyText.subhead(context)!.copyWith(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )),
                                  Text("@Allen  30m", style: MyText.body1(context)!.copyWith(
                                      color: MyColors.grey_40
                                  )),
                                  Spacer(),
                                  Icon(Icons.expand_more, color: MyColors.grey_40, size: 20),
                                ],
                              ),
                              Text(MyStrings.middle_lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.w300
                              )),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.undo, color: MyColors.grey_40, size: 15), Text(" 92", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.repeat, color: MyColors.grey_40, size: 15), Text(" 20", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.favorite, color: MyColors.grey_40, size: 15), Text(" 6", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.chat, color: MyColors.grey_40, size: 15),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(Img.get('photo_male_2.jpg'), height: 50, width: 50, fit: BoxFit.cover),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Nathaniel ", style: MyText.subhead(context)!.copyWith(
                                      color: Colors.black, fontWeight: FontWeight.bold
                                  )),
                                  Text("@Nathaniel  43m", style: MyText.body1(context)!.copyWith(
                                      color: MyColors.grey_40
                                  )),
                                  Spacer(),
                                  Icon(Icons.expand_more, color: MyColors.grey_40, size: 20),
                                ],
                              ),
                              Text(MyStrings.middle_lorem_ipsum, style: MyText.subhead(context)!.copyWith(
                                  color: Colors.black, fontWeight: FontWeight.w300
                              )),
                              Container(height: 15),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.undo, color: MyColors.grey_40, size: 15), Text(" 4k", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.repeat, color: MyColors.grey_40, size: 15), Text(" 23", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.favorite, color: MyColors.grey_40, size: 15), Text(" 90", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                  Spacer(),
                                  Icon(Icons.chat, color: MyColors.grey_40, size: 15),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0),
                ],
              );
            }, childCount: 1
            ),
          )
        ],
      ),
    );
  }
}

