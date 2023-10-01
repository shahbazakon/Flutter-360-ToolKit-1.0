import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ToolbarBasicRoute extends StatefulWidget {

  ToolbarBasicRoute();

  @override
  ToolbarBasicRouteState createState() => new ToolbarBasicRouteState();
}


class ToolbarBasicRouteState extends State<ToolbarBasicRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Toolbar") as PreferredSizeWidget?,
      body: Container(),
    );
  }
}

