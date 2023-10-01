import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_sectioned_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ListSectionedRoute extends StatefulWidget {

  ListSectionedRoute();

  @override
  ListSectionedRouteState createState() => new ListSectionedRouteState();
}

class ListSectionedRouteState extends State<ListSectionedRoute> {
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

    int sectCount = 0;
    int sectIdx = 0;
    List<String> months = Dummy.getStringsMonth();
    for (int i = 0; i < items.length / 6; i++) {
      items.insert(sectCount, new People.section(months[sectIdx], true));
      sectCount = sectCount + 5;
      sectIdx++;
    }

    return new Scaffold(
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Sectioned") as PreferredSizeWidget?,
      body: ListSectionedAdapter(items, onItemClick).getView(),
    );
  }
}

