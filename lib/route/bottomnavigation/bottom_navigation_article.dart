import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BottomNavigationArticleRoute extends StatefulWidget {

  BottomNavigationArticleRoute();

  @override
  BottomNavigationArticleRouteState createState() => new BottomNavigationArticleRouteState();
}

class BottomNavigationArticleRouteState extends State<BottomNavigationArticleRoute> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
          leading: IconButton(icon: Icon(Icons.menu, color: Colors.green[300]), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search, color: Colors.green[300]), onPressed: () {}),// overflow menu
          ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Fusce Aliquam Blandit? Urna Quis Pulvinar. Donec Luctus Tincidunt eu Condimentum",
                          style: MyText.headline(context)!.copyWith(
                              color: MyColors.grey_90, fontWeight: FontWeight.bold
                          )),
                      Container(height: 10),
                      Text("Quisque sapien lorem, vestibulum vitae justo eget, fringilla eleifend nisi. Nam fermentum ipsum vitae ligula",
                          style: MyText.subhead(context)!.copyWith(
                              color: MyColors.grey_90, fontWeight: FontWeight.w500
                          )),
                      Divider(height: 30),
                      Text(MyStrings.lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)
                      ),
                      Container(height: 20),
                      Container(
                        child: Image.asset(Img.get('image_20.jpg'), fit: BoxFit.cover,),
                        width: double.infinity, height: 200,
                      ),
                      Container(height: 5),
                      Text("Image source : pexels.com", textAlign: TextAlign.center,
                          style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)
                      ),
                      Container(height: 20),
                      Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)
                      ),
                      Container(height: 20),
                      Text(MyStrings.medium_lorem_ipsum, textAlign: TextAlign.start,
                          style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)
                      ),
                      Container(height: 20),
                      Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify,
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)
                      ),
                      Container(height: 30),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(0),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 1,
                  unselectedLabelColor: MyColors.grey_10, labelColor: Colors.green[300],
                  tabs: [
                    Tab(icon: Icon(Icons.view_module)),
                    Tab(icon: Icon(Icons.data_usage)),
                    Tab(icon: Icon(Icons.account_balance)),
                    Tab(icon: Icon(Icons.folder)),
                    Tab(icon: Icon(Icons.account_circle)),
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

