
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonHighEmphasisRoute extends StatefulWidget {

  ButtonHighEmphasisRoute();

  @override
  ButtonHighEmphasisState createState() => new ButtonHighEmphasisState();
}

class ButtonHighEmphasisState extends State<ButtonHighEmphasisRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Claveland") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('image_24.jpg'),
                    height: 250, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("TRAVEL", style: MyText.button(context)!.copyWith(color: MyColors.grey_20)),
                        Container(height: 5),
                        Text("5 eats cheap", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                        Container(height: 15),
                        Text(MyStrings.middle_lorem_ipsum, style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                        Container(height: 10),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('VIEW ENTRY', style: MyText.button(context)!.copyWith(color: Colors.white)),
                            ),
                            Container(width: 10),
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
            Container(height: 5),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: [
                      Image.asset(Img.get('image_29.jpg'),
                        height: 250, width: double.infinity, fit: BoxFit.cover,
                      ),
                      FloatingActionButton.extended(
                        heroTag: "fab1", backgroundColor: MyColors.primary,
                        label: Text('ADD ENTRY'),
                        icon: Icon(Icons.add, color: Colors.white),
                        onPressed: () { print('Clicked'); },
                      )
                    ],
                    alignment: Alignment.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("TRAVEL", style: MyText.button(context)!.copyWith(color: MyColors.grey_20)),
                        Container(height: 5),
                        Text("Special Menu", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}