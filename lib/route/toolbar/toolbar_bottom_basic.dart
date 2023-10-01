import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ToolbarBottomBasicRoute extends StatefulWidget {

  ToolbarBottomBasicRoute();

  @override
  ToolbarBottomBasicRouteState createState() => new ToolbarBottomBasicRouteState();
}


class ToolbarBottomBasicRouteState extends State<ToolbarBottomBasicRoute> {

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
        child: Text("Bottom toolbar basic", textAlign: TextAlign.center, style: MyText.title(context)!.copyWith(
          color: MyColors.grey_40,
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: MyColors.primary,
        child: Container(
          height: kToolbarHeight,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white,),),
              Spacer(),
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

