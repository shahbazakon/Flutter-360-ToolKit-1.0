import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuDrawerAdminDarkRoute extends StatefulWidget {

  MenuDrawerAdminDarkRoute();

  @override
  MenuDrawerAdminDarkRouteState createState() => new MenuDrawerAdminDarkRouteState();
}


class MenuDrawerAdminDarkRouteState extends State<MenuDrawerAdminDarkRoute> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext context;
  bool isSwitched1 = true;

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
      key: scaffoldKey, backgroundColor: Colors.white,
      appBar: new AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark
      ), title: new Text("Admin"),
          backgroundColor: MyColors.grey_95,
      ),
      drawer: Container(width: 240, height: double.infinity,
        color: MyColors.grey_95,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Container(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(Img.get("photo_male_6.jpg")),
                    ),
                    Container(width: 20),
                    Text("Evan C", style: MyText.body2(context)!.copyWith(
                        color: MyColors.grey_20, fontWeight: FontWeight.w500
                    )),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.power_settings_new, size: 20, color: Colors.deepOrange[300]),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              Divider(height: 0),
              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Main", style: MyText.body2(context)!.copyWith(color: MyColors.grey_20)),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.dns, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Dashboard", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){onDrawerItemClicked("Dashboard");},
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.notifications_outlined, size : 20, color: Colors.deepOrange[300]) ,
                    minLeadingWidth: 0, dense: true,
                    title: Text("Notification", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    trailing: Switch(
                      value: isSwitched1, onChanged: (value) {setState(() { isSwitched1 = value; });},
                      activeColor: Colors.red,
                      inactiveThumbColor: Colors.grey,
                    ),
                    onTap: (){onDrawerItemClicked("Notification");},
                  ),
              ),
              Container(
                height: 40,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    minVerticalPadding: 0,
                    leading: Icon(Icons.chat, size : 20, color: Colors.deepOrange[300]) ,
                    minLeadingWidth: 0, dense: true,
                    title: Text("Chat", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    onTap: (){onDrawerItemClicked("Chat");},
                  ),
              ),
              Container(
                height: 40,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    minVerticalPadding: 0,
                    leading: Icon(Icons.apps, size : 20, color: Colors.deepOrange[300]) ,
                    minLeadingWidth: 0, dense: true,
                    title: Text("Products", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    onTap: (){onDrawerItemClicked("Products");},
                  ),
              ),

              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Store Data", style: MyText.body2(context)!.copyWith(color: MyColors.grey_20)),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.credit_card, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Earning", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){onDrawerItemClicked("Earning");},
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.data_usage, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Report", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  trailing: Icon(Icons.chevron_right, color: Colors.deepOrange[300]),
                  onTap: (){onDrawerItemClicked("Report");},
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 0,
                  leading: Icon(Icons.people_outline, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Users", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){onDrawerItemClicked("Users");},
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 0,
                  leading: Icon(Icons.show_chart, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Analytics", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){onDrawerItemClicked("Analytics");},
                ),
              ),

              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Other", style: MyText.body2(context)!.copyWith(color: MyColors.grey_20)),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.enhanced_encryption, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Security", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){onDrawerItemClicked("Security");},
                ),
              ),
              Container(
                height: 40,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.face, size : 20, color: Colors.deepOrange[300]) ,
                  minLeadingWidth: 0, dense: true,
                  title: Text("Profile", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                  onTap: (){onDrawerItemClicked("Profile");},
                ),
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

