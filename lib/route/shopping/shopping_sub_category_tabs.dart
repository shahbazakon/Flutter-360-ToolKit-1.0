import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/grid_shop_product_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/shop_product.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ShoppingSubCategoryTabsRoute extends StatefulWidget {

  ShoppingSubCategoryTabsRoute();

  @override
  ShoppingSubCategoryTabsRouteState createState() => new ShoppingSubCategoryTabsRouteState();
}


class ShoppingSubCategoryTabsRouteState extends State<ShoppingSubCategoryTabsRoute> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
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
      backgroundColor: MyColors.grey_10,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              title: Text('Fashion'), pinned: true, floating: true,
              backgroundColor: MyColors.primary,
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_cart),
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
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.body2(context)!.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
                unselectedLabelColor: Colors.grey[300],
                tabs: [
                  Tab(text: "WOMEN"),
                  Tab(text: "MEN"),
                  Tab(text: "YOUNG BOYS"),
                  Tab(text: "YOUNG GIRLS"),
                  Tab(text: "ALL TIME"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            getGridContent(),
            getGridContent(),
            getGridContent(),
            getGridContent(),
            getGridContent(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget getGridContent(){
    List<ShopProduct> items = Dummy.getShoppingProduct();
    return GridShopProductAdapter(items, onItemClick).getView();
  }

  void onItemClick(int index, String obj) {

  }
}

