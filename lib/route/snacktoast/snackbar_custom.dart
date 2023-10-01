
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SnackbarCustomRoute extends StatefulWidget {

  SnackbarCustomRoute();

  @override
  SnackbarCustomRouteState createState() => new SnackbarCustomRouteState();
}

class SnackbarCustomRouteState extends State<SnackbarCustomRoute> {

  late BuildContext _scaffoldCtx;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Snackbar Custom") as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext context){
        _scaffoldCtx = context;
        return SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("PRIMARY COLOR", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    onMenuClicked("PRIMARY COLOR");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("ACCENT ACTION", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    onMenuClicked("ACCENT ACTION");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("CARD LIGHT", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    onMenuClicked("CARD LIGHT");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("CARD DARK", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500)),
                  ),
                  onTap: () {
                    onMenuClicked("CARD DARK");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("CARD IMAGE", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                  onTap: () {
                    onMenuClicked("CARD IMAGE");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("TEXT MIDDLE", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                  onTap: () {
                    onMenuClicked("TEXT MIDDLE");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("ICON ERROR", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                  onTap: () {
                    onMenuClicked("ICON ERROR");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("ICON SUCCESS", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                  onTap: () {
                    onMenuClicked("ICON SUCCESS");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),
              Container(
                width: double.infinity, height: 50,
                child: InkWell(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("ICON INFO", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                  onTap: () {
                    onMenuClicked("ICON INFO");
                  },
                ),
              ),
              Divider(color: Colors.grey[400], height: 0, thickness: 0.5),

            ],
          ),
        );
      }),
    );
  }

  void onMenuClicked(String menu){
    if(menu == "PRIMARY COLOR"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Text("Snackbar Primary"),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        backgroundColor: MyColors.primary,
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "ACCENT ACTION"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Text("Snackbar Accent Action"),
        backgroundColor: MyColors.accent,
        duration: Duration(seconds: 1),
        action: SnackBarAction(
          label: "UNDO", textColor: Colors.white,
          onPressed: (){},
        ),
      ));
    } else if(menu == "CARD LIGHT"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        elevation: 0,
        content: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),),
          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(width: 5, height: 0),
                Expanded(child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Mauris Elementum", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90)),
                    Text("Has Been Removed", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                  ],
                )),
                Container(color: MyColors.grey_20, height: 35, width: 1, margin: EdgeInsets.symmetric(horizontal: 5)),
                SnackBarAction(
                  label: "UNDO", textColor: MyColors.primary,
                  onPressed: (){},
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "CARD DARK"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        elevation: 0,
        content: Card(
          color: MyColors.grey_90,
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),),
          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(width: 5, height: 0),
                Expanded(child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Mauris Elementum", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_5)),
                    Text("Has Been Removed", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                  ],
                )),
                Container(color: MyColors.grey_80, height: 35, width: 1, margin: EdgeInsets.symmetric(horizontal: 5)),
                SnackBarAction(
                  label: "UNDO", textColor: MyColors.grey_5,
                  onPressed: (){},
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "CARD IMAGE"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        elevation: 0,
        content: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),),
          clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(width: 5, height: 0),
                Image.asset(Img.get('image_shop_5.jpg'),
                  height: 40, width: 40,
                ),
                Container(width: 10, height: 0),
                Expanded(child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Seven Belladji", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90)),
                    Text("Added to Cart", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                  ],
                )),
                Container(color: MyColors.grey_20, height: 35, width: 1, margin: EdgeInsets.symmetric(horizontal: 5)),
                SnackBarAction(
                  label: "UNDO", textColor: MyColors.primary,
                  onPressed: (){},
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "TEXT MIDDLE"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Text("Snackbar Text Center", textAlign: TextAlign.center,),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "ICON ERROR"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.close, color: Colors.white, size: 20),
            Container(width: 15, height: 0),
            Text("This is Error Message", style: MyText.body1(context)!.copyWith(color: MyColors.grey_5)),
            Container(width: 8, height: 0),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        backgroundColor: Colors.red[600],
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "ICON SUCCESS"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.done, color: Colors.white, size: 20),
            Container(width: 15, height: 0),
            Text("Success!", style: MyText.body1(context)!.copyWith(color: MyColors.grey_5)),
            Container(width: 8, height: 0),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        backgroundColor: Colors.green[500],
        duration: Duration(seconds: 1),
      ));
    } else if(menu == "ICON INFO"){
      ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.error_outline, color: Colors.white, size: 20),
            Container(width: 15, height: 0),
            Text("Some Info Text Here", style: MyText.body1(context)!.copyWith(color: MyColors.grey_5)),
            Container(width: 8, height: 0),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        backgroundColor: Colors.blue[500],
        duration: Duration(seconds: 1),
      ));
    }

  }

}


