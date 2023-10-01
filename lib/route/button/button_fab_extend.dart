import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonFabExtendRoute extends StatefulWidget {

  ButtonFabExtendRoute();

  @override
  ButtonFabExtendState createState() => new ButtonFabExtendState();
}

class ButtonFabExtendState extends State<ButtonFabExtendRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimaryAppbarLight(context, "FAB Extend") as PreferredSizeWidget?,
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "fab1",
        backgroundColor: Colors.deepOrange,
        label: const Text('DOWNLOAD'),
        icon: Icon(Icons.file_download, color: Colors.white),
        onPressed: () { print('Clicked'); },
      ),
      body: Column(
        children : <Widget>[
          Expanded(
            child: Align(
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
                          backgroundColor: Colors.grey[400],
                        ),
                        Container(width: 20),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 10, width : 80, color: Colors.grey[400]),
                            Container(height: 10),
                            Container(height: 10, width : 145, color: Colors.grey[400]),
                            Container(height: 10),
                            Container(height: 10, width : 40, color: Colors.grey[400])
                          ],
                        )
                      ],
                    ),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey[300],
                        ),
                        Container(width: 20),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 10, width : 100, color: Colors.grey[300]),
                            Container(height: 10),
                            Container(height: 10, width : 145, color: Colors.grey[300]),
                            Container(height: 10),
                            Container(height: 10, width : 40, color: Colors.grey[300])
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}