import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class BottomSheetFloatingRoute extends StatefulWidget {

  BottomSheetFloatingRoute();

  @override
  BottomSheetFloatingRouteState createState() => new BottomSheetFloatingRouteState();
}

class BottomSheetFloatingRouteState extends State<BottomSheetFloatingRoute> {
  late PersistentBottomSheetController sheetController;
  late BuildContext _scaffoldCtx;
  bool showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_20,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Floating") as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext ctx) {
        _scaffoldCtx = ctx;
        return Center(
          child: showSheet ? Container() : Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               FloatingActionButton(
                  heroTag: "fab", backgroundColor: Colors.pink[500],
                  elevation: 3,
                  child: Icon(Icons.star, color: Colors.white,),
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
              Container(height: 20),
              Text("Press button \nabove", textAlign : TextAlign.center, style: MyText.display1(context)!.copyWith(color: Colors.grey[600])),
            ],
          ),
        );
      }),
    );
  }

  void _showSheet() {
    sheetController = showBottomSheet(context: _scaffoldCtx, builder: (BuildContext bc){
      return Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5)),
        elevation: 5, margin: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("City Building", style: MyText.title(context)!.copyWith(color: Colors.grey[800])),
                          Text("5 July 2017", style: MyText.caption(context)!.copyWith(color: Colors.grey[600])),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.grey[600]),
                      onPressed: (){
                        sheetController.close();
                      },
                    ),
                  ],
                ),
                Divider(),
                Container(height: 5),
                Text(MyStrings.middle_lorem_ipsum, style: MyText.subhead(context)!.copyWith(color: Colors.grey[800])),
                Container(height: 10),
                Row(
                  children: <Widget>[
                    Spacer(), StarRating(starCount: 5, rating: 5, color: Colors.orange[300], size: 40), Spacer()
                  ],
                ),
                Container(height: 10),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)
                      ),
                      primary: MyColors.accent, elevation: 0
                    ),
                    child: Text("SUBMIT RATING", style: TextStyle(color: Colors.white)),
                    onPressed: (){},
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