import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class NoitemSearchRoute extends StatefulWidget {

  NoitemSearchRoute();

  @override
  NoitemSearchRouteState createState() => new NoitemSearchRouteState();
}


class NoitemSearchRouteState extends State<NoitemSearchRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Search") as PreferredSizeWidget?,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.find_in_page, size: 100, color: Colors.grey[300]),
              Container(height: 15),
              Text("No Result", style: MyText.title(context)!.copyWith(
                  color: Colors.grey[800], fontWeight: FontWeight.bold
              )),
              Container(height: 5),
              Text("Try more general keyword", style: MyText.subhead(context)!.copyWith(
                color: Colors.grey[800]
              )),
            ],
          ),
        ),
      ),
    );
  }
}

