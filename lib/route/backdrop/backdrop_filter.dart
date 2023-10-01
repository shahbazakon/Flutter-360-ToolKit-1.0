import 'dart:async';

import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/adapter/list_sectioned_adapter.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class BackdropFilterRoute extends StatefulWidget {

  BackdropFilterRoute();

  @override
  BackdropFilterState createState() => new BackdropFilterState();
}

class BackdropFilterState extends State<BackdropFilterRoute> with TickerProviderStateMixin {

  late BuildContext _scaffoldCtx;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        Backdrop.of(_scaffoldCtx).revealBackLayer();
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    List<RxBool> movieFlag = [
      false.obs, true.obs, true.obs, false.obs,
      false.obs, true.obs, true.obs, false.obs
    ];
    List<int> movieIndex = List.generate(movieFlag.length, (index) => index);

    List<String> movieLabel = [
      "Smart TV", "Flat TV", "4K Ultra HD TV", "Curved TV",
      "OLED TV", "LED TV", "Home Theater TV", "Android TV"
    ];

    var selectedScreen = "TVs up to 32 inch".obs;
    List<String> screenData = [
      "TVs under 32 inch", "TVs up to 32 inch", "TVs up to 39-50 inch", "TVs up to 55 inch or larger"
    ];

    var orderBySelected = "New Arrival".obs;
    List<String> orderByData = [
      "Popular", "New Arrival", "Featured"
    ];

    int sectCount = 0;
    int sectIdx = 0;
    List<String> months = Dummy.getStringsMonth();
    for (int i = 0; i < items.length / 6; i++) {
      items.insert(sectCount, new People.section(months[sectIdx], true));
      sectCount = sectCount + 5;
      sectIdx++;
    }

    void onItemClick(int index, People obj) {
      MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
    }

    return BackdropScaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
      backLayerBackgroundColor: Colors.deepPurpleAccent[700],
      animationCurve: Curves.linear,
      animationController: AnimationController(vsync: this, duration: Duration(milliseconds: 700), value: 1),
      appBar: BackdropAppBar(
        automaticallyImplyLeading: false,
        title: Text("Filter result", style: MyText.subhead(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.deepPurpleAccent[700],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        actions: <Widget>[
          BackdropToggleButton(color: Colors.white, icon: AnimatedIcons.close_menu)
        ],
      ),
      headerHeight: 55,
      frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
      backLayer: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          color: Colors.deepPurpleAccent[700],
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Theme( data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
                  child: Container(
                    child: Column(
                      children: movieIndex.map((r) => Row(
                        children: <Widget>[
                          Checkbox(
                              checkColor: Colors.deepPurpleAccent[700], activeColor: Colors.white,
                              value: movieFlag[r].value, onChanged: (value) {}
                          ),
                          Container(width: 10),
                          Text(movieLabel[r], style: MyText.body1(context)!.copyWith(color: Colors.white)),
                        ],
                      )).toList(),
                    ),
                  ),
                ),
                Container(height: 15),
                Container(child: Divider(height: 0, color: MyColors.grey_40), margin: EdgeInsets.symmetric(horizontal: 10)),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 15),
                  child: Text("Screen Size", style: MyText.body2(context)!.copyWith(color: Colors.white)),
                ),
                Theme( data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Column(
                      children: screenData.map((r) => RadioListTile(
                        title: Text(r, style: MyText.body1(context)!.copyWith(color: Colors.white)),
                        dense: true, activeColor: Colors.white, tileColor: Colors.white,
                        contentPadding: EdgeInsets.all(0),
                        groupValue: selectedScreen.value, selected: r == selectedScreen.value, value: r,
                        onChanged: (dynamic val) {
                          selectedScreen.value = val;
                        },
                      )).toList(),
                    ),
                  ),
                ),
                Container(height: 15),
                Container(child: Divider(height: 0, color: MyColors.grey_40), margin: EdgeInsets.symmetric(horizontal: 10)),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 15),
                  child: Text("Order by", style: MyText.body2(context)!.copyWith(color: Colors.white)),
                ),
                Theme( data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Column(
                      children: orderByData.map((r) => RadioListTile(
                        title: Text(r, style: MyText.body1(context)!.copyWith(color: Colors.white)),
                        dense: true, activeColor: Colors.white, tileColor: Colors.white,
                        contentPadding: EdgeInsets.all(0),
                        groupValue: orderBySelected.value, selected: r == orderBySelected.value, value: r,
                        onChanged: (dynamic val) {
                          orderBySelected.value = val;
                        },
                      )).toList(),
                    ),
                  ),
                ),
                Container(height: 80),
              ],
            )),
          ),
        );
      }),
      frontLayerScrim: Colors.transparent,
      frontLayer: Container(
        color: Colors.white,
        child: ListSectionedAdapter(items, onItemClick).getView()
      ),
    );
  }

}