import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ToolbarBottomFabRoute extends StatefulWidget {

  ToolbarBottomFabRoute();

  @override
  ToolbarBottomFabRouteState createState() => new ToolbarBottomFabRouteState();
}


class ToolbarBottomFabRouteState extends State<ToolbarBottomFabRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ), toolbarHeight: 0,
        elevation: 0, backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Bottom toolbar FAB", textAlign: TextAlign.center, style: MyText.title(context)!.copyWith(
          color: MyColors.grey_40,
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, elevation: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: kToolbarHeight,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.amber[900]),),
              Spacer(),
              IconButton(
                icon: Icon(Icons.search, color: Colors.amber[900]),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.amber[900]),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.amber[900],
        child: Icon(Icons.add), onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

