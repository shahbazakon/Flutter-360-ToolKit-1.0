import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_people_left_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class MenuOverflowToolbarRoute extends StatefulWidget {

  MenuOverflowToolbarRoute();

  @override
  MenuOverflowToolbarRouteState createState() => new MenuOverflowToolbarRouteState();
}


class MenuOverflowToolbarRouteState extends State<MenuOverflowToolbarRoute> {
  final GlobalKey _menuKey = new GlobalKey();
  List<People>? items;
  late BuildContext context;

  void onItemClick(int index, People obj) {
    MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    super.initState();

    items = Dummy.getPeopleData();
    items!.addAll(Dummy.getPeopleData());

    Future.delayed(Duration(seconds: 1), () {
      print("SHOW_MENU");
      setState(() {
        dynamic state = _menuKey.currentState;
        state.showButtonMenu();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: MyColors.primary,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () { },
            ),
            PopupMenuButton<String>(
              key: _menuKey,
              onSelected: (String value){
                showToastClicked(context, value);
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Search", child: Text("Search"),
                ),
                PopupMenuItem(
                  value: "Refresh", child: Text("Refresh"),
                ),
                PopupMenuItem(
                  value: "Settings", child: Text("Settings"),
                ),
                PopupMenuItem(
                  value: "Send feedback", child: Text("Send feedback"),
                ),
                PopupMenuItem(
                  value: "Help", child: Text("Help"),
                ),
                PopupMenuItem(
                  value: "Signout", child: Text("Signout"),
                ),
              ],
            )
          ]
      ),
      body: ListPeopleLeftAdapter(items, onItemClick).getView(),
    );
  }

  static void showToastClicked(BuildContext context, String action){
    print(action);
    MyToast.show(action+" clicked", context);
  }

}

