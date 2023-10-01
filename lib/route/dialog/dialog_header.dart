
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DialogHeaderRoute extends StatefulWidget {
  DialogHeaderRoute();

  @override
  DialogCustomInfoRouteState createState() => new DialogCustomInfoRouteState();
}

class DialogCustomInfoRouteState extends State<DialogHeaderRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          iconTheme: IconThemeData(color: MyColors.grey_60),
          title: Text("Dialog Header", style: MyText.title(context)!.copyWith(
              color: MyColors.grey_60
          )),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(value: "Settings", child: Text("Settings"),),
              ],
            )
          ]
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomHeaderDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("HEADER POLYGON",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomBlueDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("HEADER PRODUCT BLUE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomYellowDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("HEADER PRODUCT YELLOW",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomNewsDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("HEADER PRODUCT NEWS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomHeaderDialog extends StatefulWidget {
  CustomHeaderDialog({Key? key}) : super(key: key);

  @override
  CustomHeaderDialogState createState() => new CustomHeaderDialogState();
}

class CustomHeaderDialogState extends State<CustomHeaderDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Image.asset(Img.get('bg_polygon.png'), fit: BoxFit.cover)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      alignment: Alignment.centerLeft,
                      child: Text("Invitation",
                          style: MyText.title(context)!
                              .copyWith(color: MyColors.grey_90)),
                    ),
                    Container(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      child: Text(MyStrings.medium_lorem_ipsum,
                          style: MyText.body1(context)!
                              .copyWith(color: MyColors.grey_60)),
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new TextButton(
                          style: TextButton.styleFrom(primary: Colors.transparent),
                          child: Text("DECLINE", style: TextStyle(color: MyColors.accent)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: Colors.transparent),
                          child: Text("JOIN", style: TextStyle(color: MyColors.primary)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBlueDialog extends StatefulWidget {
  CustomBlueDialog({Key? key}) : super(key: key);

  @override
  CustomBlueDialogState createState() => new CustomBlueDialogState();
}

class CustomBlueDialogState extends State<CustomBlueDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      Img.get('img_plant_2.jpg'),
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
                      alignment: Alignment.centerLeft,
                      child: Text("Maecenas Quis",
                          style: MyText.title(context)!
                              .copyWith(color: MyColors.grey_90)),
                    ),
                    Container(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Text("\$9.20",
                          style: MyText.subhead(context)!
                              .copyWith(color: Colors.green[500])),
                    ),
                    new Divider(thickness: 1, color: Colors.grey[10]),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Icon(Icons.favorite,
                                color: Colors.blue[500], size: 25),
                            Container(
                              width: 10,
                            ),
                            Icon(Icons.add_box,
                                color: Colors.blue[500], size: 25),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomYellowDialog extends StatefulWidget {
  CustomYellowDialog({Key? key}) : super(key: key);

  @override
  CustomYellowDialogState createState() => new CustomYellowDialogState();
}

class CustomYellowDialogState extends State<CustomYellowDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      Img.get('img_plant_1.jpg'),
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
                          alignment: Alignment.centerLeft,
                          child: Text("Maecenas Quis",
                              style: MyText.title(context)!
                                  .copyWith(color: MyColors.grey_90)),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
                          child: Text("\$9.20",
                              style: MyText.subhead(context)!
                                  .copyWith(color: Colors.orange[500])),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(right: 15),
                      child: new Icon(Icons.favorite,
                          color: Colors.orange[500], size: 25),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNewsDialog extends StatefulWidget {
  CustomNewsDialog({Key? key}) : super(key: key);

  @override
  CustomNewsDialogState createState() => new CustomNewsDialogState();
}

class CustomNewsDialogState extends State<CustomNewsDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Image.asset(Img.get('image_30.jpg'), fit: BoxFit.cover)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      child: Text(MyStrings.medium_lorem_ipsum,
                          style: MyText.subhead(context)!
                              .copyWith(color: Colors.black)),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(7,10,7,0),
                      child: new Divider(thickness: 1, color: Colors.grey[10]),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10,10,10,20),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Icon(Icons.favorite,
                              color: MyColors.accent, size: 20),
                          Container(width: 10,),
                          Text("1.4k peoples like this news",
                              style: MyText.caption(context)!
                                  .copyWith(color: MyColors.grey_60)),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
