
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonWithIconRoute extends StatefulWidget {

  ButtonWithIconRoute();

  @override
  ButtonWithIconState createState() => new ButtonWithIconState();
}

class ButtonWithIconState extends State<ButtonWithIconRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Button Icon") as PreferredSizeWidget?,
      body: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
            margin: EdgeInsets.all(15),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Text("ITEM PACKAGE", style: MyText.button(context)!.copyWith(color: MyColors.grey_40)),
                ),
                Divider(height: 0),
                Container(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text("Toothbrush", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text("\$ 6.5", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text("Shampoo", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text("\$ 8.4", style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                Container(height: 15),
                Divider(height: 0),
                Container(height: 15),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline_outlined),
                    label: Container(
                      alignment: Alignment.center,
                      height: 40, padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('ADD TO CART', style: MyText.button(context)!.copyWith(color: MyColors.primary)),
                    ),
                  ),
                ),
                Container(height: 15),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.white,
            child: Row(
              children: [
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline_outlined),
                  label: Container(
                      alignment: Alignment.center,
                      height: 40, padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('CHECKOUT', style: MyText.button(context)!.copyWith(color: Colors.white))
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}