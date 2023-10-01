import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_news_light_hrzntl_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/news.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ListNewsLightHrzntlRoute extends StatefulWidget {

  ListNewsLightHrzntlRoute();

  @override
  ListNewsLightHrzntlRouteState createState() => new ListNewsLightHrzntlRouteState();
}

class ListNewsLightHrzntlRouteState extends State<ListNewsLightHrzntlRoute> {
  late BuildContext context;
  void onItemClick(int index, News obj) {
    MyToast.show("News " + index.toString() + "clicked", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<News> items = Dummy.getNewsData(10);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light
              ),
              backgroundColor: Colors.white,
              title: Text("News Light Hrzntl", style: TextStyle(color: MyColors.grey_60)),
              leading: IconButton(
                icon: Icon(Icons.menu, color: MyColors.grey_60),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: MyColors.grey_60),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert, color: MyColors.grey_60),
                  onPressed: () {},
                ),// overflow menu
              ]
          ),
          ListNewsLightHrzntlAdapter(items, onItemClick).getView()
        ],
      ),
    );
  }
}

