import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/adapter/list_photo_info_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/photo_info.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChipInputRoute extends StatefulWidget {

  ChipInputRoute();

  @override
  ChipInputRouteState createState() => new ChipInputRouteState();
}


class ChipInputRouteState extends State<ChipInputRoute> {

  final TextEditingController inputController = new TextEditingController();
  List<Widget> selectedWidget = [];
  List<PhotoInfo> selectedItems = [];
  List<PhotoInfo> items = [];
  var selectedLength = 0.obs;
  late ListPhotoInfoAdapter adapter;

  void onItemClick(int index, PhotoInfo obj) {
    selectedItems.add(obj);
    rebuildSelected();
    selectedLength.value = selectedItems.length;
  }

  @override
  void initState() {
    items = Dummy.getPhotoInfo();
    adapter = ListPhotoInfoAdapter(items, onItemClick);
    selectedItems.add(items[items.length-1]);
    selectedLength.value = selectedItems.length;
    rebuildSelected();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ), elevation: 0,
        titleSpacing: 0,
        iconTheme: IconThemeData(color: MyColors.grey_60),
        title: Text("Photo Info", style: MyText.title(context)!.copyWith(
            color: MyColors.grey_60
        )),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),// overflow menu
          PopupMenuButton<String>(
            onSelected: (String value){},
            itemBuilder: (context) => [
              PopupMenuItem(value: "Settings", child: Text("Settings"),),
            ],
          )
        ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Obx((){
              selectedLength.value;
              return Wrap(
                spacing: 10,
                children: selectedWidget,
              );
            }),
          ),
          Divider(height: 1, thickness: 1, color: MyColors.grey_10),
          Expanded(
            child: adapter.getView(),
          )
        ],
      ),
    );
  }

  void rebuildSelected(){
    selectedWidget = [];
    for(int i = 0; i < selectedItems.length; i++){
      PhotoInfo p = selectedItems[i];
      selectedWidget.add(Chip(
        avatar: Container(
          padding: EdgeInsets.only(left: 5), child: Icon(p.icon, size: 22, color: MyColors.grey_60),
        ),
        label: Container(
            padding: EdgeInsets.only(top: 6), height: 28, child: Text(p.title!, style: TextStyle(color: MyColors.grey_80))
        ),
        deleteIcon: Icon(Icons.cancel, size: 20),
        deleteIconColor: Colors.grey,
        onDeleted: (){
          selectedItems.removeAt(i);
          rebuildSelected();
          selectedLength.value = selectedItems.length;
        },
      ));
    }

    selectedWidget.add(Container(width: 100,
      child: TextField(controller: inputController,
        decoration: InputDecoration(
          hintStyle:TextStyle(color: MyColors.grey_40, fontSize: 15),
          border: InputBorder.none, hintText: "Search Info..."
        ),
        onChanged: (value){
          adapter.filter(value);
        },
      ),
    ));
  }
}

