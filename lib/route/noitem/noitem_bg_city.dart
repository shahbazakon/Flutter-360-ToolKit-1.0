
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class NoitemBgCityRoute extends StatefulWidget {

  NoitemBgCityRoute();

  @override
  NoitemBgCityRouteState createState() => new NoitemBgCityRouteState();
}


class NoitemBgCityRouteState extends State<NoitemBgCityRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimaryAppbar(context, "City") as PreferredSizeWidget?,
      floatingActionButton: FloatingActionButton(
        heroTag: "fab3",
        backgroundColor: MyColors.accent,
        elevation: 3,
        child: Icon(Icons.cloud_upload, color: Colors.white,),
        onPressed: () { print('Clicked'); },
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(Img.get('bg_no_item_city.png'), width: double.infinity),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 60),
              width: 250,
              child: Column(
                children: <Widget>[
                  Text("No cities here", style: MyText.title(context)!.copyWith(
                      color: MyColors.grey_90, fontWeight: FontWeight.bold
                  )),
                  Container(height: 5),
                  Text("Add one by clicking round button below", textAlign: TextAlign.center, style: MyText.medium(context).copyWith(
                      color: MyColors.grey_60
                  )),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

