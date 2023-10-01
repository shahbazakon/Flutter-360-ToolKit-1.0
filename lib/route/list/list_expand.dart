import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_expand_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ListExpandRoute extends StatefulWidget {

  ListExpandRoute();

  @override
  ListExpandRouteState createState() => new ListExpandRouteState();
}

class ListExpandRouteState extends State<ListExpandRoute> {
  late BuildContext context;
  List<People>? items;

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Expand") as PreferredSizeWidget?,
      body: ListExpandAdapter(items).getView(),
    );
  }
}

