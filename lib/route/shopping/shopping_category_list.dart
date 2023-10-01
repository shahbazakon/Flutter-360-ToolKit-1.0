
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/shop_category.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ShoppingCategoryListRoute extends StatefulWidget {

  ShoppingCategoryListRoute();

  @override
  ShoppingCategoryListRouteState createState() => new ShoppingCategoryListRouteState();
}


class ShoppingCategoryListRouteState extends State<ShoppingCategoryListRoute> {

  @override
  Widget build(BuildContext context) {

    List<Widget> listCategory = [];
    for(ShopCategory s in Dummy.getShoppingCategory()){
      listCategory.add(getItemViewList(s));
    }

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          title: new Text("Categories"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () { Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(width: 20, height: 90),
                  FloatingActionButton(
                    heroTag: "fab1",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.accessibility, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                  FloatingActionButton(
                    heroTag: "fab2",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.face, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                  FloatingActionButton(
                    heroTag: "fab3",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.child_friendly, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                  FloatingActionButton(
                    heroTag: "fab4",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.weekend, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                  FloatingActionButton(
                    heroTag: "fab5",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.devices, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                  FloatingActionButton(
                    heroTag: "fab6",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.pool, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                  FloatingActionButton(
                    heroTag: "fab7",
                    backgroundColor: MyColors.primary,
                    elevation: 3,
                    child: Icon(Icons.restaurant, color: Colors.white,),
                    onPressed: () { print('Clicked'); },
                  ),
                  Container(width: 20, height: 0),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("All Categories", style: MyText.medium(context).copyWith(
                  color: Colors.grey[900], fontWeight: FontWeight.bold
              )),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: listCategory,
              ),
            )
          ],
        ),
      )
    );
  }


  Widget getItemViewList(ShopCategory s){
    Widget w;
    w = Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(25),
                child: Icon(s.icon, size: 25, color: Colors.grey[500]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(s.title, style: MyText.medium(context).copyWith(
                      color: Colors.grey[900]
                  )),
                  Container(height: 5),
                  Text(s.brief, style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[500]
                  )),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.chevron_right, size: 25, color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Container(width: 75),
            Expanded(
              child: Container(height: 1, color: Colors.grey[300]),
            )
          ],
        )
      ],
    );
    return w;
  }
}

