import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BottomNavigationLightSimpleRoute extends StatefulWidget {

  BottomNavigationLightSimpleRoute();

  @override
  BottomNavigationLightSimpleRouteState createState() => new BottomNavigationLightSimpleRouteState();
}

class BottomNavigationLightSimpleRouteState extends State<BottomNavigationLightSimpleRoute> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController!.addListener((){ });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          leading: IconButton(icon: Icon(Icons.menu, color: MyColors.primary), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search, color: MyColors.primary), onPressed: () {}),// overflow menu
          ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Recommended", style: MyText.medium(context).copyWith(
                          color: Colors.grey[900], fontWeight: FontWeight.w500
                      )),
                      Container(height: 10),
                      Card(
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 0, margin: EdgeInsets.all(0),
                        child: Image.asset(Img.get('image_18.jpg'),
                          height: 180, width: double.infinity, fit: BoxFit.cover,
                        ),
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Spacer(),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 7, width: 7,
                            child: CircleAvatar(backgroundColor: MyColors.grey_20),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 7, width: 7,
                            child: CircleAvatar(backgroundColor: MyColors.grey_20),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 7, width: 7,
                            child: CircleAvatar(backgroundColor: MyColors.primaryLight),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 7, width: 7,
                            child: CircleAvatar(backgroundColor: MyColors.grey_20),
                          ),
                          Spacer(),
                        ],
                      ),
                      Container(height: 15),
                      Text("Featured", style: MyText.medium(context).copyWith(
                          color: Colors.grey[900], fontWeight: FontWeight.w500
                      )),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 0, margin: EdgeInsets.all(0),
                              child: Image.asset(Img.get('image_21.jpg'),
                                height: 100, width: double.infinity, fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(width: 10),
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 0, margin: EdgeInsets.all(0),
                              child: Image.asset(Img.get('image_23.jpg'),
                                height: 100, width: double.infinity, fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(width: 10),
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 0, margin: EdgeInsets.all(0),
                              child: Image.asset(Img.get('image_19.jpg'),
                                height: 100, width: double.infinity, fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(height: 15),
                      Text("Categories", style: MyText.medium(context).copyWith(
                          color: Colors.grey[900], fontWeight: FontWeight.w500
                      )),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(width: double.infinity, height: 50,
                                alignment: Alignment.center,
                                child: Text("AUTOMOTIVE", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                decoration: BoxDecoration(color: Colors.red[400], borderRadius: BorderRadius.all(Radius.circular(3)))
                            ),
                          ),
                          Container(width: 10),
                          Expanded(
                            child: Container(width: double.infinity, height: 50,
                                alignment: Alignment.center,
                                child: Text("TECNOLOGY", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                decoration: BoxDecoration(color: Colors.blue[400], borderRadius: BorderRadius.all(Radius.circular(3)))
                            ),
                          ),
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(width: double.infinity, height: 50,
                                alignment: Alignment.center,
                                child: Text("SPORT", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                decoration: BoxDecoration(color: Colors.indigo[400], borderRadius: BorderRadius.all(Radius.circular(3)))
                            ),
                          ),
                          Container(width: 10),
                          Expanded(
                            child: Container(width: double.infinity, height: 50,
                                alignment: Alignment.center,
                                child: Text("FASHION", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                decoration: BoxDecoration(color: Colors.orange[400], borderRadius: BorderRadius.all(Radius.circular(3)))
                            ),
                          ),
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(width: double.infinity, height: 50,
                                alignment: Alignment.center,
                                child: Text("BUSINESS", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                decoration: BoxDecoration(color: Colors.lightGreen[400], borderRadius: BorderRadius.all(Radius.circular(3)))
                            ),
                          ),
                          Container(width: 10),
                          Expanded(
                            child: Container(width: double.infinity, height: 50,
                                alignment: Alignment.center,
                                child: Text("POLITICS", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                decoration: BoxDecoration(color: Colors.blueGrey[400], borderRadius: BorderRadius.all(Radius.circular(3)))
                            ),
                          ),
                        ],
                      ),
                      Container(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(0),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 1,
                  unselectedLabelColor: MyColors.grey_20, labelColor: MyColors.primary,
                  tabs: [
                    Tab(icon: Icon(Icons.web_asset)),
                    Tab(icon: Icon(Icons.add_circle_outline)),
                    Tab(icon: Icon(Icons.mail_outline)),
                    Tab(icon: Icon(Icons.person_outline)),
                  ],
                  controller: _tabController,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

