import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class NoitemBgCactusRoute extends StatefulWidget {

  NoitemBgCactusRoute();

  @override
  NoitemBgCactusRouteState createState() => new NoitemBgCactusRouteState();

}

class NoitemBgCactusRouteState extends State<NoitemBgCactusRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: MyColors.grey_10,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light
          ),
          backgroundColor: Colors.white,
          title: Text("Account", style: MyText.title(context)!.copyWith(color: MyColors.grey_90)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: MyColors.grey_90),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert, color: MyColors.grey_90),
              onPressed: () {},
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: "fab3",
          backgroundColor: Colors.white,
          elevation: 3,
          child: Icon(Icons.person_add, color: MyColors.primary),
          onPressed: () { print('Clicked'); },
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(Img.get('bg_no_item_cactus.png'), width: double.infinity),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                width: 380,
                child: Text("There is no account available \nTap button below to add new account", textAlign: TextAlign.center, style: MyText.medium(context).copyWith(
                    color: MyColors.grey_60
                )),
              ),
            ),
          ],
        )
    );
  }
}

