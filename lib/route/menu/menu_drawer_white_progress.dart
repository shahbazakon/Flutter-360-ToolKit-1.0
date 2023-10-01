import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuDrawerWhiteProgressRoute extends StatefulWidget {

  MenuDrawerWhiteProgressRoute();

  @override
  MenuDrawerWhiteProgressRouteState createState() => new MenuDrawerWhiteProgressRouteState();
}


class MenuDrawerWhiteProgressRouteState extends State<MenuDrawerWhiteProgressRoute> {

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
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Drawer Progress", style: TextStyle(color: MyColors.grey_80)),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu, color: MyColors.grey_60),
            onPressed: () { scaffoldKey.currentState!.openDrawer(); },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close, color: MyColors.grey_60),
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
                Stack(
                  children: <Widget>[
                    Image.asset(Img.get('image_30.jpg'),
                      width: double.infinity, height: 90, fit: BoxFit.cover,
                    ),
                    Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(height: 30),
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: MyColors.grey_20,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Img.get("photo_female_2.jpg")),
                            ),
                          ),
                          Container(height: 7),
                          Text("Betty L", style: MyText.body2(context)!.copyWith(
                              color: Colors.blueGrey[800], fontWeight: FontWeight.w500
                          )),
                          Container(height: 2),
                          Text("betty.l@mail.com", style: MyText.caption(context)!.copyWith(
                              color: MyColors.grey_20, fontWeight: FontWeight.w500
                          )),
                          Container(height: 10),
                          Container(
                            height: 4, width: 90,
                            child: LinearProgressIndicator(
                              value: 0.40,
                              valueColor: AlwaysStoppedAnimation<Color>(MyColors.accent),
                              backgroundColor: Colors.grey[300],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(height: 8),
                InkWell(onTap: (){},
                  child: Container(height: 40, padding: EdgeInsets.symmetric(horizontal: 30), alignment: Alignment.centerLeft,
                    child: Text("My Post", style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                  ),
                ),
                Container(height: 5),
                InkWell(onTap: (){},
                  child: Container(height: 40, padding: EdgeInsets.symmetric(horizontal: 30), alignment: Alignment.centerLeft,
                    child: Text("Reports", style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                  ),
                ),
                Container(height: 5),
                InkWell(onTap: (){},
                  child: Container(height: 40, padding: EdgeInsets.symmetric(horizontal: 30), alignment: Alignment.centerLeft,
                    child: Text("Message", style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                  ),
                ),
                Container(height: 5),
                InkWell(onTap: (){},
                  child: Container(height: 40, padding: EdgeInsets.symmetric(horizontal: 30), alignment: Alignment.centerLeft,
                    child: Text("Profile", style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                  ),
                ),
                Container(height: 5),
                InkWell(onTap: (){},
                  child: Container(height: 40, padding: EdgeInsets.symmetric(horizontal: 30), alignment: Alignment.centerLeft,
                    child: Text("Notification", style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                  ),
                ),
                Container(height: 5),
                InkWell(onTap: (){},
                  child: Container(height: 40, padding: EdgeInsets.symmetric(horizontal: 30), alignment: Alignment.centerLeft,
                    child: Text("Logout", style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                  ),
                ),
                Container(height: 5),
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