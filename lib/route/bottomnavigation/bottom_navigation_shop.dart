import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/bottom_nav.dart';
import 'package:materialx_flutter/model/shop_category.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class BottomNavigationShop extends StatefulWidget {

  BottomNavigationShop();
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.home, null),
    BottomNav('Brand', Icons.work, null),
    BottomNav('Cart', Icons.shopping_cart, null),
    BottomNav('Account', Icons.person, null)
  ];

  @override
  BottomNavigationIconRouteState createState() => new BottomNavigationIconRouteState();
}

class BottomNavigationIconRouteState extends State<BottomNavigationShop> with SingleTickerProviderStateMixin {

  int currentIndex = 1;
  late BuildContext ctx;

  void onBackPress(){
    if(Navigator.of(ctx).canPop()){
      Navigator.of(ctx).pop();
    }
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    ctx = context;

    List<ShopCategory> listCategory = Dummy.getShoppingCategory();
    List<Widget> gridCategory = getGridViewCategory(listCategory);
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: new Text("Shop"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () { Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),// overflow menu
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(Img.get('image_18.jpg'),fit: BoxFit.cover),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          height: 200,
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Browse Through Million of Products\nin Many Category", textAlign : TextAlign.center,
                                style: MyText.medium(context).copyWith(
                                    color: Colors.white, fontWeight: FontWeight.bold
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                      child: Column(
                        children: gridCategory,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: MyColors.primary,
        unselectedItemColor: Colors.grey[400],
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

  List<Widget> getGridViewCategory(List<ShopCategory> lc){
    List<Widget> wc = [];
    for(int i = 0; i < lc.length / 2; i++){
      Widget w;
      w = Row(
        children: <Widget>[
          getItemViewGrid(lc[i*2]),
          Container(width: 2),
          getItemViewGrid(lc[(i*2)+1])
        ],
      );

      wc.add(w);
    }
    return wc;
  }

  Widget getItemViewGrid(ShopCategory s){
    return Expanded(
      flex: 1,
      child: Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
        color: Colors.white,
        elevation: 2,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 120,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Icon(s.icon, size: 40, color: Colors.grey[600]),
              ),
              Text(s.title, textAlign : TextAlign.center,
                  style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[800]
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}

