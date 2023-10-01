import 'package:flutter/material.dart';
import 'package:materialx_flutter/adapter/list_sectioned_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ProgressPullRefreshRoute extends StatefulWidget {

  ProgressPullRefreshRoute();

  @override
  ProgressPullRefreshRouteState createState() => new ProgressPullRefreshRouteState();
}


class ProgressPullRefreshRouteState extends State<ProgressPullRefreshRoute> {
  late BuildContext context;
  late ListSectionedAdapter adapter;
  void onItemClick(int index, People obj) {
    MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    super.initState();
    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    int sectCount = 0;
    int sectIdx = 0;
    List<String> months = Dummy.getStringsMonth();
    for (int i = 0; i < items.length / 6; i++) {
      items.insert(sectCount, new People.section(months[sectIdx], true));
      sectCount = sectCount + 5;
      sectIdx++;
    }

    adapter = ListSectionedAdapter(items, onItemClick);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Pull Refresh") as PreferredSizeWidget?,
      body: new RefreshIndicator(
        child: adapter.getView(),
        onRefresh: onPullRefresh,
      ),
    );
  }

  Future<void> onPullRefresh() async {
    People item = Dummy.getPeopleData()[0];
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      adapter.addItem(item);
    });
  }

}

