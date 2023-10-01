import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';

class ToolbarDarkRoute extends StatefulWidget {

  ToolbarDarkRoute();

  @override
  ToolbarDarkRouteState createState() => new ToolbarDarkRouteState();
}


class ToolbarDarkRouteState extends State<ToolbarDarkRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
          backgroundColor: Colors.grey[900], systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Toolbar", style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),// overflow menu
          ]
      ),
      body: Container(),
    );
  }
}

