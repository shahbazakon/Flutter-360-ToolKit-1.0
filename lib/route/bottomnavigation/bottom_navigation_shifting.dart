import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/model/bottom_nav.dart';

class BottomNavigationShiftingRoute extends StatefulWidget {

  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Movie & TV', Icons.ondemand_video, Colors.blueGrey[700]),
    BottomNav('Music', Icons.music_note, Colors.pink[800]),
    BottomNav('Books', Icons.book, Colors.grey[700]),
    BottomNav('Newsstand', Icons.chrome_reader_mode, Colors.teal[800])
  ];

  @override
  BottomNavigationShiftingState createState() => BottomNavigationShiftingState();
}

class BottomNavigationShiftingState extends State<BottomNavigationShiftingRoute> with TickerProviderStateMixin<BottomNavigationShiftingRoute> {

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
    BottomNav curItem = widget.itemsNav[currentIndex];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark
            ),
            bottom: PreferredSize(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 1,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      splashColor: Colors.grey[600],
                      highlightColor: Colors.grey[600],
                      onTap: onBackPress,
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.menu,
                          size: 23.0,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    Text("Search : " + curItem.title, style: TextStyle(color: Colors.grey[600]),),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.mic,
                        size: 23.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(15)
            ),
            backgroundColor: Colors.grey[200],
            automaticallyImplyLeading: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return IncludeReleasesContent.get(context);
            }, childCount: 1 ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: widget.itemsNav.map((BottomNav d){
          return BottomNavigationBarItem(
            backgroundColor: d.color,
            icon: Icon(d.icon),
            label: d.title,
          );
        }).toList(),
      ),
    );
  }

}
