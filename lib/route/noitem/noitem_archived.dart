import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class NoitemArchivedRoute extends StatefulWidget {

  NoitemArchivedRoute();

  @override
  NoitemArchivedRouteState createState() => new NoitemArchivedRouteState();
}


class NoitemArchivedRouteState extends State<NoitemArchivedRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Archived") as PreferredSizeWidget?,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          width: 220,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[300],
                  ),
                  Container(width: 20),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(height: 10, width : 80, color: Colors.grey[300]),
                      Container(height: 10),
                      Container(height: 10, width : 145, color: Colors.grey[300]),
                      Container(height: 10),
                      Container(height: 10, width : 40, color: Colors.grey[300])
                    ],
                  )
                ],
              ),
              Container(height: 20),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[200],
                  ),
                  Container(width: 20),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(height: 10, width : 100, color: Colors.grey[200]),
                      Container(height: 10),
                      Container(height: 10, width : 145, color: Colors.grey[200]),
                      Container(height: 10),
                      Container(height: 10, width : 40, color: Colors.grey[200])
                    ],
                  )
                ],
              ),
              Container(height: 25),
              Text("Archived conversations appear here", style: MyText.subhead(context)!.copyWith(
                color: Colors.grey[700]
              )),
            ],
          ),
        ),
      ),
    );
  }
}

