import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_draggable_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ListDraggableRoute extends StatefulWidget {

  ListDraggableRoute();

  @override
  ListDraggableRouteState createState() => new ListDraggableRouteState();
}

class ListDraggableRouteState extends State<ListDraggableRoute> {
  late BuildContext context;
  List<People>? items;

  void onReorder() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Draggable") as PreferredSizeWidget?,
      body: ListDraggableAdapter(items, onReorder).getView(),
    );
  }
}

