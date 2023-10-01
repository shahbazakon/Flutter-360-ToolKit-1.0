import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_releases_content_dark.dart';
import 'package:materialx_flutter/model/bottom_nav.dart';

class BottomNavigationDarkRoute extends StatefulWidget {

  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Profile', Icons.account_circle, null)
  ];

  @override
  BottomNavigationBasicState createState() => BottomNavigationBasicState();
}

class BottomNavigationBasicState extends State<BottomNavigationDarkRoute> with TickerProviderStateMixin<BottomNavigationDarkRoute> {

  int currentIndex = 0;
  late BuildContext ctx;

  void onBackPress(){
    if(Navigator.of(ctx).canPop()){
      Navigator.of(ctx).pop();
    }
  }

  @override
  Widget build(BuildContext context) {

    ctx = context;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
              ),
              backgroundColor: Colors.grey[900],
              floating: true, pinned: false, snap: false,
              title: Text("Recents"),
              leading: IconButton(icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () { Navigator.pop(context);},
              ),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
                IconButton(icon: Icon(Icons.more_vert, color: Colors.white), onPressed: () {}),
              ]
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return IncludeReleasesContentDark.get(context);
            }, childCount: 1 ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: MyColors.grey_60,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: widget.itemsNav.map((BottomNav d){
          return BottomNavigationBarItem(
            icon: Icon(d.icon),
            label: d.title,
          );
        }).toList(),
      ),
    );
  }

}
