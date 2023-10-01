import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuDrawerNoIconRoute extends StatefulWidget {

  MenuDrawerNoIconRoute();

  @override
  MenuDrawerNoIconRouteState createState() => new MenuDrawerNoIconRouteState();
}


class MenuDrawerNoIconRouteState extends State<MenuDrawerNoIconRoute> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext context;

  void onDrawerItemClicked(String name){
    Navigator.pop(context);
    MyToast.show(name+" Selected", context);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      scaffoldKey.currentState!.openDrawer();
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    Widget widget =  Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: new AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: new Text("Drawer Mail"),
          backgroundColor: Colors.pink[600],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () { Navigator.pop(context); },
            ),
          ]
      ),
      drawer: Container(
        width: 230,
        child: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 190,
                  child: Stack(
                    children: <Widget>[
                      Image.asset(Img.get('material_bg_2.png'),
                        width: double.infinity, height: double.infinity, fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                        child: CircleAvatar(
                          radius: 36,
                          backgroundColor: Colors.grey[100],
                          child: CircleAvatar(
                            radius: 33,
                            backgroundImage: AssetImage(Img.get("photo_male_6.jpg")),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("John Miller", style: MyText.body2(context)!.copyWith(
                                          color: Colors.grey[100], fontWeight: FontWeight.bold
                                      )),
                                      Container(height: 5),
                                      Text("johnmiller@mail.com", style: MyText.body2(context)!.copyWith(
                                          color: Colors.grey[100]
                                      ))
                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Icon(Icons.arrow_drop_down, size: 24.0, color: Colors.white),
                                  onTap: (){},
                                )
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 8),
                ListTile(
                  title: Text("All inboxes", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  trailing: Text("75", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("All inboxes");},
                ),
                Divider(),
                ListTile(
                  title: Text("Inbox", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  trailing: Text("68", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("Inbox");},
                ),
                ListTile(
                  title: Text("Priority inbox", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                    color: MyColors.primaryLight,
                    child: Text("3 new", style: TextStyle(color: Colors.white)),
                  ),
                  onTap: (){onDrawerItemClicked("Priority inbox");},
                ),
                ListTile(
                  title: Text("Social", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                    color: Colors.green,
                    child: Text("51 new", style: TextStyle(color: Colors.white)),
                  ),
                  onTap: (){onDrawerItemClicked("Social");},
                ),
                Divider(),
                ListTile(
                  title: Text("Starred", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  onTap: (){onDrawerItemClicked("Starred");},
                ),
                ListTile(
                  title: Text("Sent", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  onTap: (){onDrawerItemClicked("Sent");},
                ),
                ListTile(
                  title: Text("Spam", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  trailing: Text("13", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("Spam");},
                ),
                ListTile(
                  title: Text("Trash", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  onTap: (){onDrawerItemClicked("Trash");},
                ),
                Divider(),
                ListTile(
                  title: Text("Settings", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  onTap: (){onDrawerItemClicked("Settings");},
                ),
                ListTile(
                  title: Text("Help & Feedback", style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800], fontWeight: FontWeight.bold
                  )),
                  onTap: (){onDrawerItemClicked("Help & Feedback");},
                ),
              ],
            ),
          ),
        ),
      ),
      body: IncludeDrawerContent.get(context),
    );
    return widget;
  }
}

