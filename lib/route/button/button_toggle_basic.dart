
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonToggleBasicRoute extends StatefulWidget {

  ButtonToggleBasicRoute();

  @override
  ButtonToggleBasicState createState() => new ButtonToggleBasicState();
}

class ButtonToggleBasicState extends State<ButtonToggleBasicRoute> {

  List<bool> isSelectedTab = List.generate(3, (index) => false);
  List<bool> isSelectedIcon = List.generate(3, (index) => false);
  List<bool> isSelectedText = List.generate(4, (index) => false);
  List<bool> isSelectedAlign = List.generate(3, (index) => false);
  List<bool> isSelectedTabIcon = List.generate(2, (index) => false);

  @override
  void initState() {
    isSelectedTab[1] = true;
    isSelectedIcon[1] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Toggle Basic") as PreferredSizeWidget?,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Text Toggle", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
            ),
            ToggleButtons(
              isSelected: isSelectedTab, color: MyColors.grey_60,
              selectedBorderColor: MyColors.primary,
              borderRadius: BorderRadius.circular(30),
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text("BUTTON 1", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text("BUTTON 2", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text("BUTTON 3", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500)),
                ),
              ],
              onPressed: (int index){
                isSelectedTab = List.generate(3, (index) => false);
                isSelectedTab[index] = true;
                setState(() {});
              },
            ),
            Container(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Icon Toggle", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
            ),
            ToggleButtons(
              isSelected: isSelectedIcon, color: MyColors.grey_60,
              selectedBorderColor: MyColors.primary,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.visibility),
                Icon(Icons.notifications)
              ],
              onPressed: (int index){
                isSelectedIcon = List.generate(3, (index) => false);
                isSelectedIcon[index] = true;
                setState(() {});
              },
            ),
            Container(height: 20),
            Row(
              children: [
                ToggleButtons(
                  isSelected: isSelectedText, color: MyColors.grey_60,
                  selectedBorderColor: MyColors.primary,
                  children: [
                    Icon(Icons.format_italic),
                    Icon(Icons.format_bold),
                    Icon(Icons.format_underline),
                    Icon(Icons.format_color_text)
                  ],
                  onPressed: (int index){
                    isSelectedText[index] = true;
                    setState(() {});
                  },
                ),
                Container(width: 15),
                ToggleButtons(
                  isSelected: isSelectedAlign, color: MyColors.grey_60,
                  selectedBorderColor: MyColors.primary,
                  children: [
                    Icon(Icons.format_align_left),
                    Icon(Icons.format_align_center),
                    Icon(Icons.format_align_right),
                  ],
                  onPressed: (int index){
                    isSelectedAlign = List.generate(3, (index) => false);
                    isSelectedAlign[index] = true;
                    setState(() {});
                  },
                )
              ],
            ),
            Container(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Text Toggle", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
            ),
            ToggleButtons(
              isSelected: isSelectedTabIcon, color: MyColors.grey_60,
              selectedBorderColor: MyColors.primary,
              borderRadius: BorderRadius.circular(10),
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 20), Container(width: 10),
                      Text("Profile", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.settings, size: 20), Container(width: 10),
                      Text("Settings", style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ],
              onPressed: (int index){
                isSelectedTabIcon = List.generate(2, (index) => false);
                isSelectedTabIcon[index] = true;
                setState(() {});
              },
            ),
          ],
        ),
      )
    );
  }

}