import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ToolbarLightRoute extends StatefulWidget {

  ToolbarLightRoute();

  @override
  ToolbarLightRouteState createState() => new ToolbarLightRouteState();
}


class ToolbarLightRouteState extends State<ToolbarLightRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          iconTheme: IconThemeData(color: MyColors.grey_60),
          title: Text("Toolbar", style: MyText.title(context)!.copyWith(
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
      body: Container(),
    );
  }

}

