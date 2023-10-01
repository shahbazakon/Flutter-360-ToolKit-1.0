import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_drawer_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ProfileDrawerImageRoute extends StatefulWidget {

  ProfileDrawerImageRoute();

  @override
  ProfileDrawerImageRouteState createState() => new ProfileDrawerImageRouteState();
}


class ProfileDrawerImageRouteState extends State<ProfileDrawerImageRoute> {

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
          title: new Text("Drawer News"), systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
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
              Container(height: 280,
                child: Stack(
                  children: <Widget>[
                    Image.asset(Img.get('image_2.jpg'), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
                    Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Column(
                        children: <Widget>[
                          Container(height: 50),
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Img.get("photo_male_7.jpg")),
                            ),
                          ),
                          Container(height: 15),
                          Text("James Pratterson", style: MyText.medium(context).copyWith(color: Colors.white)),
                          Container(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.location_on, color: MyColors.grey_10, size: 12), Container(width : 5),
                              Text("San Francisco, CA", style: MyText.body1(context)!.copyWith(color: MyColors.grey_10)),
                            ],
                          ),
                          Container(height: 40),
                          Row(
                            children: <Widget>[
                              Container(width: 10),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Text("1.5 K", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                    Container(height: 5),
                                    Text("Posts", style: MyText.caption(context)!.copyWith(color: MyColors.grey_10))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Text("17.8 K", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                    Container(height: 5),
                                    Text("Followers", style: MyText.caption(context)!.copyWith(color: MyColors.grey_10))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Text("1.3 K", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                    Container(height: 5),
                                    Text("Following", style: MyText.caption(context)!.copyWith(color: MyColors.grey_10))
                                  ],
                                ),
                              ),
                              Container(width: 10),
                            ],
                          ),
                          Container(height: 20),
                        ],
                      ),
                    ),
                  ],
                )
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
      body: IncludeDrawerContent.get(context),
    );
    return widget;
  }
}

