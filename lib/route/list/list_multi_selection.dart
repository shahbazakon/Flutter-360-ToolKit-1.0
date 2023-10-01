import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_multi_selection_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/model/inbox.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ListMultiSelectionRoute extends StatefulWidget {

  ListMultiSelectionRoute();

  @override
  ListMultiSelectionRouteState createState() => new ListMultiSelectionRouteState();
}

class ListMultiSelectionRouteState extends State<ListMultiSelectionRoute> {

  late BuildContext context;
  List<Inbox> items = [];
  var modeSelection = false.obs;
  var refreshList = false.obs;
  var selectionCount = 0.obs;

  void onItemClick(int index, Inbox obj) {
    MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
  }
  @override
  void initState() {
    items = Dummy.getInboxData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    var adapter = ListMultiSelectionAdapter(context, items, onItemClick);
    adapter.setOnSelectedMode((bool flag, int count){
      print("setOnSelectedMode : " + flag.toString() + " | " + count.toString());
      modeSelection.value = flag;
      selectionCount.value = count;
    });

    return new Obx(() => Scaffold(
      appBar: AppBar(
          backgroundColor: modeSelection.value ? Colors.blueGrey[600] : Colors.red[600],
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ), titleSpacing: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            modeSelection.value ? selectionCount.value.toString() : "Inbox",
            style: MyText.title(context)!.copyWith(color: Colors.white)
          ),
          leading: IconButton(
            icon: Icon(modeSelection.value ? Icons.arrow_back : Icons.menu),
            onPressed: () {
              modeSelection.value ? adapter.clearSelection() : Navigator.pop(context);
            },
          ),
          actions: modeSelection.value ? <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  items.removeWhere((e) => e.selected.value == true);
                  adapter.clearSelection();
                  refreshList.value = !refreshList.value;
                });
              },
            )
          ] :
          <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () { },
            ),
            PopupMenuButton<String>(
              onSelected: (String value){ },
              itemBuilder: (context) => [
                PopupMenuItem(value: "Settings", child: Text("Settings")),
              ],
            )
          ]
      ),
      body: adapter.getView(),
    ));
  }
}

