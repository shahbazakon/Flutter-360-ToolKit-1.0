
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonTextLabelRoute extends StatefulWidget {

  ButtonTextLabelRoute();

  @override
  ButtonTextLabelState createState() => new ButtonTextLabelState();
}

class ButtonTextLabelState extends State<ButtonTextLabelRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Placement") as PreferredSizeWidget?,
      body: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),
            margin: EdgeInsets.all(15),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(Img.get('image_30.jpg'),
                  height: 230, width: double.infinity, fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("TRAVEL", style: MyText.button(context)!.copyWith(color: MyColors.grey_20)),
                              Text("Great office culture", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(Img.get("photo_male_6.jpg")),
                          )
                        ],
                      ),
                      Container(height: 15),
                      Text(MyStrings.short_lorem_ipsum, style: TextStyle(fontSize: 17, color: MyColors.grey_40)),
                      Row(
                        children: [
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text('LEARN MORE', style: MyText.button(context)!.copyWith(color: MyColors.primary)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}