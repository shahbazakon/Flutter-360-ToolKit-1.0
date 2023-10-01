import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class BottomSheetFabRoute extends StatefulWidget {

  BottomSheetFabRoute();

  @override
  BottomSheetFabRouteState createState() => new BottomSheetFabRouteState();
}

class BottomSheetFabRouteState extends State<BottomSheetFabRoute> {
  late PersistentBottomSheetController sheetController;
  late BuildContext _scaffoldCtx;
  bool showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimaryAppbar(context, "FAB") as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext ctx) {
        _scaffoldCtx = ctx;
        return Center(
          child: Text("Press button \nbelow", textAlign : TextAlign.center, style: MyText.display1(context)!.copyWith(color: Colors.grey[500])),
        );
      }),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
        backgroundColor: Colors.pink[500],
        elevation: 3,
        child: Icon(showSheet ? Icons.arrow_downward : Icons.arrow_upward, color: Colors.white,),
        onPressed: () {
          setState(() {
            showSheet = !showSheet;
            if(showSheet) {
              _showSheet();
            } else {
              Navigator.pop(_scaffoldCtx);
            }
          });
        }
      ),
    );
  }

  void _showSheet() {
    sheetController = showBottomSheet(context: _scaffoldCtx, builder: (BuildContext bc){
      return Card(
        elevation: 10, margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
          padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(width: 30, height: 5, decoration: BoxDecoration(
                    color: MyColors.grey_10,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
                ),
                Container(height: 10),
                Row(
                  children: <Widget>[
                    Container(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Dandelion Chocolate", style: MyText.headline(context)!.copyWith(color: Colors.grey[800])),
                          Container(height: 20),
                          Row(
                            children: <Widget>[
                              StarRating(starCount: 5, rating: 4.7, color: Colors.yellow, size: 18), Container(width: 5),
                              Text("4.7 (51)", style: MyText.medium(context).copyWith(color: Colors.grey[400])),
                            ],
                          ),
                          Container(height: 5),
                          Divider(),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text("12 min away", style: MyText.medium(context).copyWith(color: MyColors.primary)),
                          ),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
                Container(height: 50,
                  child: Row(
                    children: <Widget>[
                      Container(width: 10), Icon(Icons.location_on, color: MyColors.grey_20), Container(width: 20),
                      Text("740 Valencia St, San Francisco, CA", style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
                    ],
                  ),
                ),
                Container(height: 50,
                  child: Row(
                    children: <Widget>[
                      Container(width: 10), Icon(Icons.phone, color: MyColors.grey_20), Container(width: 20),
                      Text("(415) 349-0942", style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
                    ],
                  ),
                ),
                Container(height: 50,
                  child: Row(
                    children: <Widget>[
                      Container(width: 10), Icon(Icons.schedule, color: MyColors.grey_20), Container(width: 20),
                      Text("Wed, 10 AM - 9 PM", style: MyText.medium(context).copyWith(color: MyColors.grey_90)),
                    ],
                  ),
                ),
              ],
            )
        ),
      );
    });
    sheetController.closed.then((value) {
      setState(() {
        showSheet = false;
      });
    });
  }

}