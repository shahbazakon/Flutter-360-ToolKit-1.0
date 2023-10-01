import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/news.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class TabsSimpleProductRoute extends StatefulWidget {

  TabsSimpleProductRoute();

  @override
  TabsSimpleProductRouteState createState() => new TabsSimpleProductRouteState();
}


class TabsSimpleProductRouteState extends State<TabsSimpleProductRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;
  late List<News> items;

  void onItemClick(int index, News obj) {
    MyToast.show("News " + index.toString() + "clicked", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    items = Dummy.getNewsData(15);
    _tabController = TabController(length: 5, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light
              ), elevation: 0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: MyColors.grey_80),
              leading: IconButton(icon: Icon(Icons.notes), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {},),// overflow menu
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text("Most Popular\nDecoration", style: MyText.title(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold)),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab, isScrollable: true,
                    indicatorPadding: EdgeInsets.symmetric(vertical: 8),
                    labelColor: MyColors.primaryDark, unselectedLabelColor: MyColors.grey_40,
                    indicator: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    tabs: [
                      Container(width: 70, child: Tab(text: "All"),),
                      Container(width: 70, child: Tab(text: "Chair"),),
                      Container(width: 70, child: Tab(text: "Table"),),
                      Container(width: 70, child: Tab(text: "Lamp"),),
                      Container(width: 70, child: Tab(text: "Drawer"),),
                    ],
                    controller: _tabController,
                  ),
                )
            ),
            Container(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(width: 15),
                Expanded(flex: 1, child: Card( elevation: 0,
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(Img.get('image_30.jpg'),
                      height: 180, width: double.infinity, fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(width: 10),
                Expanded(flex: 1, child: Card( elevation: 0,
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(Img.get('image_13.jpg'),
                      height: 180, width: double.infinity, fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(width: 15),
                Expanded(flex: 1, child: Card( elevation: 0,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(Img.get('image_14.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(width: 10),
                Expanded(flex: 1, child: Card( elevation: 0,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(Img.get('image_22.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(width: 15),
                Expanded(flex: 1, child: Card( elevation: 0,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(Img.get('image_26.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(width: 10),
                Expanded(flex: 1, child: Card( elevation: 0,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(Img.get('image_12.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(width: 15),
                Expanded(flex: 1, child: Card( elevation: 0,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(Img.get('image_15.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(width: 10),
                Expanded(flex: 1, child: Card( elevation: 0,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(Img.get('image_27.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 200, width: 0)
          ],
        ),
      ),
    );
  }
}

