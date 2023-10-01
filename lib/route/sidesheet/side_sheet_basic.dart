import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_sectioned_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class SideSheetBasicRoute extends StatefulWidget {

  SideSheetBasicRoute();

  @override
  SideSheetBasicRouteState createState() => new SideSheetBasicRouteState();
}

class SideSheetBasicRouteState extends State<SideSheetBasicRoute> {
  late BuildContext _scaffoldCtx;
  TextStyle textStyle = TextStyle(color: Colors.pink[300], height: 1.4, fontSize: 16);
  TextStyle labelStyle = TextStyle(color: Colors.pink[300]);
  UnderlineInputBorder lineStyle1 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[300]!, width: 1));
  UnderlineInputBorder lineStyle2 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[300]!, width: 2));

  double value1 = 0.3;
  void setValue1(double value) => setState(() => value1 = value);

  void onItemClick(int index, People obj) {
    MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        Scaffold.of(_scaffoldCtx).openEndDrawer();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    int sectCount = 0;
    int sectIdx = 0;
    List<RxBool> label = [
      false.obs, true.obs, true.obs, false.obs
    ];

    var selectedOrder = "Last opened".obs;
    List<String> orderBy = [
      "Date created", "Last opened", "Last modified", "Owner", "Name"
    ];

    List<String> months = Dummy.getStringsMonth();
    for (int i = 0; i < items.length / 6; i++) {
      items.insert(sectCount, new People.section(months[sectIdx], true));
      sectCount = sectCount + 5;
      sectIdx++;
    }

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ), titleSpacing: 0,
        iconTheme: IconThemeData(color: MyColors.grey_60),
        title: Text("Inbox", style: MyText.title(context)!.copyWith(color: MyColors.grey_60)),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.filter_alt), onPressed: () {
            Scaffold.of(_scaffoldCtx).openEndDrawer();
          }),
        ]
      ),
      body: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return ListSectionedAdapter(items, onItemClick).getView();
      }),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 5),
          child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text("Label", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
              ),
              InkWell(
                child: Row(
                  children: <Widget>[
                    Checkbox(value: label[0].value, onChanged: (value) {}), Text("Event"),
                  ],
                ),
                onTap: (){ label[0].value = !label[0].value; },
              ),
              InkWell(
                child: Row(
                  children: <Widget>[
                    Checkbox(value: label[1].value, onChanged: (value) {}), Text("Personal"),
                  ],
                ),
                onTap: (){ label[1].value = !label[1].value; },
              ),
              InkWell(
                child: Row(
                  children: <Widget>[
                    Checkbox(value: label[2].value, onChanged: (value) {}), Text("Reminder"),
                  ],
                ),
                onTap: (){ label[2].value = !label[2].value; },
              ),
              InkWell(
                child: Row(
                  children: <Widget>[
                    Checkbox(value: label[3].value, onChanged: (value) {}), Text("Work"),
                  ],
                ),
                onTap: (){ label[3].value = !label[3].value; },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text("Format", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
              ),
              Container(
                color: MyColors.grey_10,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                  controller: TextEditingController(text: "All"),
                  decoration: InputDecoration(
                      enabledBorder: lineStyle1, focusedBorder: lineStyle2, suffixIcon: Icon(Icons.arrow_drop_down)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Text("Range", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
              ),
              Container(
                height: 10,
                child: SliderTheme(
                  data: SliderThemeData(
                      thumbColor: MyColors.accent, trackHeight: 2,
                      activeTrackColor: MyColors.accent,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 6,
                      )
                  ),
                  child:  Slider( value: value1, onChanged: setValue1,),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 30, bottom: 15),
                child: Text("Order By", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: orderBy.map((r) => RadioListTile(
                    title: Text(r), dense: true,
                    contentPadding: EdgeInsets.all(0),
                    groupValue: selectedOrder.value, selected: r == selectedOrder.value, value: r,
                    onChanged: (dynamic val) {
                      selectedOrder.value = val;
                    },
                  )).toList(),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

