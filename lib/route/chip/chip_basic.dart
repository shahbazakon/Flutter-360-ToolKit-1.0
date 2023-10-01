
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChipBasicRoute extends StatefulWidget {

  ChipBasicRoute();

  @override
  ChipBasicRouteState createState() => new ChipBasicRouteState();
}


class ChipBasicRouteState extends State<ChipBasicRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Basic"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.send), onPressed: () {},),// overflow menu
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(value: "Settings", child: Text("Settings"),),
              ],
            )
          ]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text("To", style: MyText.subhead(context)!.copyWith(
                      color: MyColors.grey_60)
                  ),
                ),
                Expanded(
                  child: Wrap(
                    children: <Widget>[
                      Chip(
                        avatar: CircleAvatar(backgroundImage: AssetImage(Img.get("photo_female_6.jpg"))),
                        label: Text('Elizabeth'),
                        deleteIcon: Icon(Icons.cancel),
                        deleteIconColor: Colors.grey,
                        onDeleted: (){},
                      ),
                      Container(width: 5),
                      Chip(
                        avatar: CircleAvatar(backgroundImage: AssetImage(Img.get("photo_male_6.jpg"))),
                        label: Text('Evans C'),
                        deleteIcon: Icon(Icons.cancel),
                        deleteIconColor: Colors.grey,
                        onDeleted: (){},
                      ),
                      Chip(
                        avatar: CircleAvatar(backgroundImage: AssetImage(Img.get("photo_male_1.jpg"))),
                        label: Text('Anderson Thomas'),
                        deleteIcon: Icon(Icons.cancel),
                        deleteIconColor: Colors.grey,
                        onDeleted: (){},
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.contacts, color: MyColors.accent),
                  onPressed: (){},
                )
              ],
            ),
            Divider(height: 0, thickness: 0.5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                maxLines: 1, minLines: 1,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration.collapsed(
                    hintText: 'Subject'
                ),
              ),
            ),
            Divider(height: 0, thickness: 0.5),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: new InputDecoration.collapsed(
                    hintText: 'Compose Mail'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

