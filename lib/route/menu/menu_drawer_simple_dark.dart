import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuDrawerSimpleDarkRoute extends StatefulWidget {

  MenuDrawerSimpleDarkRoute();

  @override
  MenuDrawerSimpleDarkRouteState createState() => new MenuDrawerSimpleDarkRouteState();
}


class MenuDrawerSimpleDarkRouteState extends State<MenuDrawerSimpleDarkRoute> {

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
          title: new Text("Drawer Simple Dark"),
          backgroundColor: Colors.grey[900],
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
              icon: const Icon(Icons.close),
              onPressed: () { Navigator.pop(context); },
            ),
          ]
      ),
      body: Scaffold(
        key: scaffoldKey,
        body: IncludeDrawerContent.get(context),
        drawer: Container(width: 200,
          child: Drawer(
            child: Container(
              color: Colors.blueGrey[800],
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("Home", style: MyText.subhead(context)!.copyWith(
                          color: Colors.grey[300], fontWeight: FontWeight.bold
                      )),
                      leading: Icon(Icons.home, size: 25.0, color: Colors.grey[600]),
                      onTap: (){onDrawerItemClicked("Home");},
                    ),
                    ListTile(
                      title: Text("Trending", style: MyText.subhead(context)!.copyWith(
                          color: Colors.grey[300], fontWeight: FontWeight.bold
                      )),
                      leading: Icon(Icons.whatshot, size: 25.0, color: Colors.grey[600]),
                      onTap: (){onDrawerItemClicked("Trending");},
                    ),
                    ListTile(
                      title: Text("Latest", style: MyText.subhead(context)!.copyWith(
                          color: Colors.grey[300], fontWeight: FontWeight.bold
                      )),
                      leading: Icon(Icons.schedule, size: 25.0, color: Colors.grey[600]),
                      onTap: (){onDrawerItemClicked("Latest");},
                    ),
                    ListTile(
                      title: Text("Highlight", style: MyText.subhead(context)!.copyWith(
                          color: Colors.grey[300], fontWeight: FontWeight.bold
                      )),
                      leading: Icon(Icons.highlight, size: 25.0, color: Colors.grey[600]),
                      onTap: (){onDrawerItemClicked("Highlight");},
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Settings", style: MyText.subhead(context)!.copyWith(
                          color: Colors.grey[300], fontWeight: FontWeight.bold
                      )),
                      leading: Icon(Icons.settings, size: 25.0, color: Colors.grey[600]),
                      onTap: (){onDrawerItemClicked("Settings");},
                    ),
                    ListTile(
                      title: Text("Help", style: MyText.subhead(context)!.copyWith(
                          color: Colors.grey[300], fontWeight: FontWeight.bold
                      )),
                      leading: Icon(Icons.help_outline, size: 25.0, color: Colors.grey[600]),
                      onTap: (){onDrawerItemClicked("Help");},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    return widget;
  }

}

