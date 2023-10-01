import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuDrawerNewsRoute extends StatefulWidget {

  MenuDrawerNewsRoute();

  @override
  MenuDrawerNewsRouteState createState() => new MenuDrawerNewsRouteState();
}


class MenuDrawerNewsRouteState extends State<MenuDrawerNewsRoute> {

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
          title: new Text("Drawer News"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () { Navigator.pop(context); },
            ),
          ]
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 190,
                child: Stack(
                  children: <Widget>[
                    Image.asset(Img.get('material_bg_1.png'),
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
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Home", style: MyText.subhead(context)!.copyWith(
                  color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.home, size: 25.0, color: Colors.grey) ,
                onTap: (){onDrawerItemClicked("Home");},
              ),
              ListTile(
                title: Text("Trending", style: MyText.subhead(context)!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.whatshot, size: 25.0, color: Colors.grey) ,
                onTap: (){onDrawerItemClicked("Trending");},
              ),
              ListTile(
                title: Text("Latest", style: MyText.subhead(context)!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.access_time, size: 25.0, color: Colors.grey) ,
                onTap: (){onDrawerItemClicked("Latest");},
              ),
              ListTile(
                title: Text("Highlight", style: MyText.subhead(context)!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.highlight, size: 25.0, color: Colors.grey) ,
                onTap: (){onDrawerItemClicked("Highlight");},
              ),
              Divider(),
              ListTile(
                title: Text("Settings", style: MyText.subhead(context)!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.settings, size: 25.0, color: Colors.grey) ,
                onTap: (){onDrawerItemClicked("Settings");},
              ),
              ListTile(
                title: Text("Help", style: MyText.subhead(context)!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.help_outline, size: 25.0, color: Colors.grey) ,
                onTap: (){onDrawerItemClicked("Help");},
              ),
            ],
          ),
        ),
      ),
      body: IncludeDrawerContent.get(context),
    );
    return widget;
  }
}

