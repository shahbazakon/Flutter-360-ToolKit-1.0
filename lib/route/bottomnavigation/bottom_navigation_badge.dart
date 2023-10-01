import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/model/bottom_nav.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BottomNavigationBadgeRoute extends StatefulWidget {

  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav.count('Favorites', Icons.favorite, null, true, ""),
    BottomNav('Music', Icons.music_note, null),
    BottomNav.count('Book', Icons.chrome_reader_mode, null, true, "88"),
    BottomNav('News', Icons.receipt_long, null)
  ];

  @override
  BottomNavigationBadgeState createState() => BottomNavigationBadgeState();
}

class BottomNavigationBadgeState extends State<BottomNavigationBadgeRoute> with TickerProviderStateMixin<BottomNavigationBadgeRoute> {

  var currentIndex = 0.obs;
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        bottom: PreferredSize(
            child: Card(
              margin: EdgeInsets.all(10), elevation: 2,
              child: Row(
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.grey[600], highlightColor: Colors.grey[600], onTap: onBackPress,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.menu, size: 23.0, color: Colors.grey[700],),
                    ),
                  ),
                  Text("Search", style: TextStyle(color: Colors.grey[500]),),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.mic, size: 23.0, color: Colors.grey[800],),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(15)
        ),
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children : <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                width: 220,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey[400],
                        ),
                        Container(width: 20),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 10, width : 80, color: Colors.grey[400]),
                            Container(height: 10),
                            Container(height: 10, width : 145, color: Colors.grey[400]),
                            Container(height: 10),
                            Container(height: 10, width : 40, color: Colors.grey[400])
                          ],
                        )
                      ],
                    ),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey[300],
                        ),
                        Container(width: 20),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 10, width : 100, color: Colors.grey[300]),
                            Container(height: 10),
                            Container(height: 10, width : 145, color: Colors.grey[300]),
                            Container(height: 10),
                            Container(height: 10, width : 40, color: Colors.grey[300])
                          ],
                        )
                      ],
                    ),
                    Container(height: 25),
                    Text("Bottom Navigation badge", style: MyText.subhead(context)!.copyWith(
                        color: Colors.grey[600]
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(()=> BottomNavigationBar(
        elevation: 15,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey[400],
        currentIndex:currentIndex.value,
        onTap: (int index) {
          currentIndex.value = index;
        },
        items: widget.itemsNav.map((BottomNav d){
          return BottomNavigationBarItem(
            icon: !d.badge ? Icon(d.icon) : Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Icon(d.icon),
                Positioned(
                  right: -18, top: -8, child: Container(
                  alignment: Alignment.bottomLeft, width: 25, height: 15,
                  child: Wrap(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.red, borderRadius: BorderRadius.circular(8),
                        ),
                        constraints: const BoxConstraints(minWidth: 10, minHeight: 10,),
                        child: d.badgeText == "" ? Container(width: 0, height: 0) : Text(d.badgeText,
                            style: MyText.overline(context)!.copyWith(color: Colors.white)
                        ),
                      )
                    ],
                  ),
                ),
                )
              ],
            ),
            label: d.title,
          );
        }).toList(),
      )),
    );
  }

}
