import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuDrawerAgriRoute extends StatefulWidget {

  MenuDrawerAgriRoute();

  @override
  MenuDrawerAgriRouteState createState() => new MenuDrawerAgriRouteState();
}


class MenuDrawerAgriRouteState extends State<MenuDrawerAgriRoute> {

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
          ), backgroundColor: Colors.green,
          title: new Text("Drawer Agri")
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            Image.asset(Img.get('image_31.jpg'),
              width: double.infinity, height: double.infinity, fit: BoxFit.cover,
            ),
            Container(color: Colors.black.withOpacity(0.5)),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(height: 40),
                Row(
                  children: [
                    Container(width: 10),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () { Navigator.pop(context); },
                    ),
                    Spacer()
                  ],
                ),
                Container(height: 30),
                Image.asset(Img.get('logo_small_round.png'),
                    width: 70, height: 70, fit: BoxFit.cover, color: Colors.white
                ),
                Container(height: 5),
                Text("Mtrl.X", style: MyText.headline(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                Container(height: 40),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  leading: Icon(Icons.spa, size : 20, color: Colors.white) ,
                  minLeadingWidth: 0,
                  title: Text("PLANTS", style: MyText.subhead(context)!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("PLANTS");},
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  leading: Icon(Icons.grass, size : 20, color: Colors.white) ,
                  minLeadingWidth: 0,
                  title: Text("PRODUCT", style: MyText.subhead(context)!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("PRODUCT");},
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  leading: Icon(Icons.local_florist, size : 20, color: Colors.white) ,
                  minLeadingWidth: 0,
                  title: Text("FLOWERS", style: MyText.subhead(context)!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("FLOWERS");},
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  leading: Icon(Icons.cottage, size : 20, color: Colors.white) ,
                  minLeadingWidth: 0,
                  title: Text("PROCESS", style: MyText.subhead(context)!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500
                  )),
                  onTap: (){onDrawerItemClicked("PROCESS");},
                ),
                Spacer(),
                Container(height: 0.5, color: Colors.white, margin: EdgeInsets.symmetric(horizontal: 20)),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text("EXPLORE", style: MyText.subhead(context)!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500
                  )),
                  trailing: Icon(Icons.chevron_right, size : 20, color: Colors.white) ,
                  onTap: (){onDrawerItemClicked("EXPLORE");},
                ),
              ],
            )
          ],
        ),
      ),
      body: IncludeDrawerContent.get(context),
    );
    return widget;
  }
}

