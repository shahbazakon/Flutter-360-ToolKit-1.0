import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_sectioned_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SnackbarLiftFabRoute extends StatefulWidget {

  SnackbarLiftFabRoute();

  @override
  SnackbarLiftFabRouteState createState() => new SnackbarLiftFabRouteState();
}


class SnackbarLiftFabRouteState extends State<SnackbarLiftFabRoute> {

  late BuildContext _scaffoldCtx;

  void onItemClick(int index, People obj) {
    ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text(obj.name! + " clicked"),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {

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
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Snackbar & FAB") as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return ListSectionedAdapter(items, onItemClick).getView();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }

}

