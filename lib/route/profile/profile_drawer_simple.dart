import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ProfileDrawerSimpleRoute extends StatefulWidget {

  ProfileDrawerSimpleRoute();

  @override
  ProfileDrawerSimpleRouteState createState() => new ProfileDrawerSimpleRouteState();
}


class ProfileDrawerSimpleRouteState extends State<ProfileDrawerSimpleRoute> {
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
      backgroundColor: Colors.white,
      appBar: new AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: new Text("Drawer Simple"),
          backgroundColor: Colors.lightGreen[500],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              if(scaffoldKey.currentState!.isDrawerOpen){
                scaffoldKey.currentState!.openEndDrawer();
              } else {
                scaffoldKey.currentState!.openDrawer();
              }
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () { Navigator.pop(context); },
            ),
          ]
      ),
      body: Scaffold(
        key: scaffoldKey,
        body: IncludeDrawerContent.get(context),
        drawer: Container(
          color: Colors.white,
          child: Drawer(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    color: MyColors.grey_5,
                    child: Column(
                      children: <Widget>[
                        Container(height: 20),
                        CircleAvatar(
                          radius: 42,
                          backgroundColor: MyColors.grey_60,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(Img.get("photo_male_7.jpg")),
                          ),
                        ),
                        Container(height: 15),
                        Text("James Pratterson", style: MyText.title(context)!.copyWith(color: MyColors.grey_90)),
                        Container(height: 5),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.location_on, color: MyColors.grey_20, size: 15), Container(width : 5),
                            Text("San Francisco, CA", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                          ],
                        ),
                        Container(height: 20),
                      ],
                    ),
                  ),
                  Container(height: 10),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Activity", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      onTap: (){onDrawerItemClicked("Activity");},
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Explore", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      onTap: (){onDrawerItemClicked("Explore");},
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Photos", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      onTap: (){onDrawerItemClicked("Photos");},
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Videos", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      onTap: (){onDrawerItemClicked("Videos");},
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Message", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      onTap: (){onDrawerItemClicked("Message");},
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Settings", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      onTap: (){onDrawerItemClicked("Settings");},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    return widget;
  }

}


