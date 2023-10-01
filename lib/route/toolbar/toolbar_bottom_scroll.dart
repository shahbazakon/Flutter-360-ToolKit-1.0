import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_news_card_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/news.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ToolbarBottomScrollRoute extends StatefulWidget {

  ToolbarBottomScrollRoute();

  @override
  ToolbarBottomScrollRouteState createState() => new ToolbarBottomScrollRouteState();
}


class ToolbarBottomScrollRouteState extends State<ToolbarBottomScrollRoute> with TickerProviderStateMixin {

  bool expand = false;
  late AnimationController controller;
  late Animation<double> animation, animationView;

  List<News> items = [];
  void onItemClick(int index, News obj) {
    MyToast.show("News " + index.toString() + "clicked", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 100),);

    animation = Tween(begin: -0.5, end: 0.0).animate(controller);
    animationView = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.forward(from:0);

    items = Dummy.getNewsData(10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ), toolbarHeight: 0,
        elevation: 0, backgroundColor: Colors.white,
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is UserScrollNotification) {
            if (notification.direction == ScrollDirection.forward) {
              // Handle scroll down.
              if(expand) return false;
              expand = true;
              controller.forward(from:0);
            } else if (notification.direction == ScrollDirection.reverse) {
              // Handle scroll up.
              if(!expand) return false;
              expand = false;
              controller.reverse();
            }
          }
          return false;
        },
        child: ListNewsCardAdapter(items, onItemClick).getWidgetView(padding: EdgeInsets.symmetric(vertical: 15)),
      ),
      bottomNavigationBar: SizeTransition(
        sizeFactor: animationView,
        child: BottomAppBar(
          color: Colors.white, elevation: 10,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: kToolbarHeight,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.amber[900]),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.amber[900]), onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.amber[900]), onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.amber[900],
        child: Icon(Icons.add), onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}

