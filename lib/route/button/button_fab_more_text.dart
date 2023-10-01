
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:materialx_flutter/adapter/list_basic_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ButtonFabMoreTextRoute extends StatefulWidget {

  ButtonFabMoreTextRoute();

  @override
  ButtonFabMoreTextRouteState createState() => new ButtonFabMoreTextRouteState();
}

class ButtonFabMoreTextRouteState extends State<ButtonFabMoreTextRoute> {

  late BuildContext context;
  void onItemClick(int index, People obj) {
    MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {

    this.context = context;

    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimaryAppbar(context, "FAB") as PreferredSizeWidget?,
      body: ListBasicAdapter(items, onItemClick).getView(),
      floatingActionButton : buildSpeedDial()
    );
  }

  Widget buildSpeedDial() {
    return SpeedDial(
      elevation: 2,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(color: Colors.white),
      curve: Curves.linear,
      overlayColor: Colors.black,
      overlayOpacity: 0.2,
      backgroundColor: MyColors.primary,
      children: [
        SpeedDialChild(
          elevation: 2,
          label: "Record Voice",
          child: Icon(Icons.mic, color: MyColors.grey_80),
          backgroundColor: Colors.white,
          onTap: () {},
        ),
        SpeedDialChild(
          elevation: 2,
          label: "Call Friend",
          child: Icon(Icons.call, color: MyColors.grey_80),
          backgroundColor: Colors.white,
          onTap: () {},
        ),
      ],
    );
  }

}