import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChipChoiceRoute extends StatefulWidget {

  ChipChoiceRoute();

  @override
  ChipChoiceRouteState createState() => new ChipChoiceRouteState();
}


class ChipChoiceRouteState extends State<ChipChoiceRoute> {

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
          title: Text("Product"), titleSpacing: 0,
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('image_20.jpg'),
                    height: 220, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(height: 5),
                        Row(
                          children: <Widget>[
                            Text("Toothbrush", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                            Spacer(),
                            Text("\$ 6.5", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text(MyStrings.middle_lorem_ipsum, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Divider(height: 1),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Select Type", style: MyText.subtitle(context)!.copyWith(color: MyColors.grey_80)),
                        Container(height: 10),
                        Wrap(
                          spacing: 10,
                          children: categoryIndex.map((int index) => Obx(() =>
                            ChoiceChip(
                              selected: categoryFlag[index].value, label: Text(categoryText[index]), labelPadding: EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle(color: MyColors.grey_60, fontWeight: FontWeight.w500),
                              backgroundColor: MyColors.grey_5, pressElevation: 1,
                              selectedColor: MyColors.grey_10, padding: EdgeInsets.all(8),
                              onSelected: (bool selected) {
                                for(RxBool b in categoryFlag){
                                  if(b.isTrue) b.value = false;
                                }
                                categoryFlag[index].value = true;
                              }
                            )
                          )).toList(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity, height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: MyColors.primary),
                      child: Text("ADD TO CART", style: MyText.body2(context)!.copyWith(color: Colors.white)),
                      onPressed: (){ },
                    ),
                  ),
                  Container(height: 20)
                ],
              ),
            ),
            Container(height: 10),
          ],
        ),
      ),
    );
  }
}

