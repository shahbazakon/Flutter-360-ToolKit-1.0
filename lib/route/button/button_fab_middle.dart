
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonFabMiddleRoute extends StatefulWidget {

  ButtonFabMiddleRoute();

  @override
  ButtonFabMiddleRouteState createState() => new ButtonFabMiddleRouteState();
}

class ButtonFabMiddleRouteState extends State<ButtonFabMiddleRoute> {
  PersistentBottomSheetController? sheetController;
  bool showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: CommonAppBar.getPrimaryAppbar(context, "FAB Middle") as PreferredSizeWidget?,
      body: Container(
        child: Column(
          children: <Widget>[
            Spacer(),
            Card(
              elevation: 5, margin: EdgeInsets.all(0),
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment(0.9, 1.6),
                        heightFactor: 0.5,
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Icon(Icons.directions_car),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(width: 20),
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
                                Container(height: 20),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              ),
            )
          ],
        ),
      )
    );
  }


}