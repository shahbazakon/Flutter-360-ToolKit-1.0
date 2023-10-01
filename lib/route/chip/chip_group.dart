
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ChipGroupRoute extends StatefulWidget {

  ChipGroupRoute();

  @override
  ChipGroupRouteState createState() => new ChipGroupRouteState();
}


class ChipGroupRouteState extends State<ChipGroupRoute> {

  List<String> genresText = Dummy.music_genre;
  List<int> genresIndex = List.generate(Dummy.music_genre.length, (index) => index);
  List<RxBool> genresFlag = List.generate(Dummy.music_genre.length, (index) => false.obs);

  List<String> categoryText = Dummy.music_category;
  List<int> categoryIndex = List.generate(Dummy.music_category.length, (index) => index);
  List<RxBool> categoryFlag = List.generate(Dummy.music_category.length, (index) => false.obs);
  List<RxBool> outlineFlag = List.generate(Dummy.music_category.length, (index) => false.obs);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Chip Group") as PreferredSizeWidget?,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text("Music Genre", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40, fontWeight: FontWeight.w500)),
            ),
            Container(height: 15),
            Wrap(
              spacing: 8, runSpacing: 5,
              children: genresIndex.map((int index) => Obx(() =>
                ChoiceChip(
                  selected: genresFlag[index].value, label: Text(genresText[index]), labelPadding: EdgeInsets.symmetric(horizontal: 15),
                  labelStyle: TextStyle(color: genresFlag[index].value ? Colors.blue[800] : MyColors.grey_80),
                  backgroundColor: MyColors.grey_10, pressElevation: 1,
                  selectedColor: Colors.blue[200],
                  onSelected: (bool selected) {
                    genresFlag[index].value = selected;
                  }
                )
              )).toList(),
            ),
            Container(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text("Music Category (Single Choice)", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40, fontWeight: FontWeight.w500)),
            ),
            Container(height: 15),
            Wrap(
              spacing: 8, runSpacing: 5,
              children: categoryIndex.map((int index) => Obx(() =>
                ChoiceChip(
                  selected: categoryFlag[index].value, label: Text(categoryText[index]), labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelStyle: TextStyle(color: categoryFlag[index].value ? Colors.blue[800] : MyColors.grey_80),
                  backgroundColor: MyColors.grey_10, pressElevation: 1,
                  selectedColor: Colors.blue[200],
                  onSelected: (bool selected) {
                    for(RxBool b in categoryFlag){
                      if(b.isTrue) b.value = false;
                    }
                    categoryFlag[index].value = true;
                  }
                )
              )).toList(),
            ),
            Container(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text("Chip Outline", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40, fontWeight: FontWeight.w500)),
            ),
            Container(height: 15),
            Wrap(
              spacing: 8, runSpacing: 5,
              children: categoryIndex.map((int index) => Obx(() =>
                ChoiceChip(
                  selected: outlineFlag[index].value, label: Text(categoryText[index]), labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  side: BorderSide(color: outlineFlag[index].value ? Colors.blue : MyColors.grey_20, width: 1),
                  labelStyle: TextStyle(color: outlineFlag[index].value ? Colors.blue[800] : MyColors.grey_80),
                  backgroundColor: Colors.transparent, pressElevation: 1,
                  selectedColor: Colors.transparent,
                  onSelected: (bool selected) {
                    for(RxBool b in outlineFlag){
                      if(b.isTrue) b.value = false;
                    }
                    outlineFlag[index].value = true;
                  }
                )
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

