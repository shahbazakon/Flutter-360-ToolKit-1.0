import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ChipActionRoute extends StatefulWidget {

  ChipActionRoute();

  @override
  ChipActionRouteState createState() => new ChipActionRouteState();
}


class ChipActionRouteState extends State<ChipActionRoute> {

  List<String> categoryText = [
    "Extra Soft", "Soft", "Medium", "Hard"
  ];
  List<int> categoryIndex = List.generate(4, (index) => index);
  List<RxBool> categoryFlag = List.generate(4, (index) => false.obs);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        title: Text("Weather"), titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('image_30.jpg'),
                    height: 220, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(height: 5),
                        Text("Welcome back to office",
                            style: MyText.display1(context)!.copyWith(color: MyColors.grey_80),
                            maxLines: 1, overflow: TextOverflow.ellipsis,
                        ),
                        Container(height: 5),
                        Text("Monday, 12:30 PM, Mostly Sunny", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                        Container(height: 20),
                        Row(
                          children: <Widget>[
                            Icon(Icons.wb_sunny, color: Colors.yellow[600], size: 30,), Container(width: 5),
                            Text("81 \u2109", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                            Text("/ 26 \u2103", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    child: Divider(height: 1),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ChoiceChip(
                              avatar: Container(
                                padding: EdgeInsets.only(left: 10), child: Icon(Icons.lightbulb_outline, size: 22, color: MyColors.grey_60),
                              ),
                              label: Text("Turn on lights"), padding: EdgeInsets.only(right: 10, left: 5),
                              visualDensity: VisualDensity(vertical: VisualDensity.maximumDensity),
                              selected: false, labelPadding: EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle(color: MyColors.grey_60, fontWeight: FontWeight.w500),
                              backgroundColor: Colors.grey[200], pressElevation: 1,
                              selectedColor: Colors.grey[300],
                              onSelected: (bool selected) { onItemClick("Turn on lights"); }
                          ),
                          Container(width: 10),
                          ChoiceChip(
                              avatar: Container(
                                padding: EdgeInsets.only(left: 10), child: Icon(Icons.alarm, size: 22, color: MyColors.grey_60),
                              ),
                              label: Text("Set alarm"), padding: EdgeInsets.only(right: 10, left: 5),
                              visualDensity: VisualDensity(vertical: VisualDensity.maximumDensity),
                              selected: false, labelPadding: EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle(color: MyColors.grey_60, fontWeight: FontWeight.w500),
                              backgroundColor: Colors.grey[200], pressElevation: 1,
                              selectedColor: Colors.grey[300],
                              onSelected: (bool selected) { onItemClick("Set alarm"); }
                          ),
                          Container(width: 10),
                          ChoiceChip(
                              avatar: Container(
                                padding: EdgeInsets.only(left: 10), child: Icon(Icons.menu, size: 22, color: MyColors.grey_60),
                              ),
                              label: Text("Clear Task"), padding: EdgeInsets.only(right: 10, left: 5),
                              visualDensity: VisualDensity(vertical: VisualDensity.maximumDensity),
                              selected: false, labelPadding: EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle(color: MyColors.grey_60, fontWeight: FontWeight.w500),
                              backgroundColor: Colors.grey[200], pressElevation: 1,
                              selectedColor: Colors.grey[300],
                              onSelected: (bool selected) { onItemClick("Clear Task"); }
                          ),
                          Container(width: 10),
                          ChoiceChip(
                              avatar: Container(
                                padding: EdgeInsets.only(left: 10), child: Icon(Icons.create, size: 22, color: MyColors.grey_60),
                              ),
                              label: Text("Edit Reminder"), padding: EdgeInsets.only(right: 10, left: 5),
                              visualDensity: VisualDensity(vertical: VisualDensity.maximumDensity),
                              selected: false, labelPadding: EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle(color: MyColors.grey_60, fontWeight: FontWeight.w500),
                              backgroundColor: Colors.grey[200], pressElevation: 1,
                              selectedColor: Colors.grey[300],
                              onSelected: (bool selected) { onItemClick("Edit Reminder"); }
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 10)
                ],
              ),
            ),
            Container(height: 10),
          ],
        ),
      ),
    );
  }

  void onItemClick(String name) {
    MyToast.show(name + " clicked", context, duration: MyToast.LENGTH_SHORT);
  }

}

