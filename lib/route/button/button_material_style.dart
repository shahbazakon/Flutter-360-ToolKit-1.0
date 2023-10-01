
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonMaterialStyleRoute extends StatefulWidget {

  ButtonMaterialStyleRoute();

  @override
  ButtonMaterialStyleState createState() => new ButtonMaterialStyleState();
}

class ButtonMaterialStyleState extends State<ButtonMaterialStyleRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Button Material Style") as PreferredSizeWidget?,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("Normal", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
              ),
              Row(
                children: [
                  Expanded(child: TextButton(
                    onPressed: () {},
                    child: Container(
                        alignment: Alignment.center,
                        height: 35, padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('TEXT BUTTON', style: MyText.button(context)!.copyWith(color: MyColors.primary))
                    ),
                  )),
                  Expanded(child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 40, padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('CONTAINED', style: MyText.button(context)!.copyWith(color: Colors.white))
                    ),
                  ))
                ],
              ),
              Container(height: 15),
              OutlinedButton(
                onPressed: () {},
                child: Container(
                    alignment: Alignment.center,
                    height: 40, padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('OUTLINED', style: MyText.button(context)!.copyWith(color: MyColors.primary))
                ),
              ),
              Container(height: 15),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("With Icon", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
              ),
              Row(
                children: [
                  Expanded(child: TextButton.icon(
                    onPressed: () {},
                    label: Text('TEXT BUTTON', style: MyText.button(context)!.copyWith(color: MyColors.primary)),
                    icon: Icon(Icons.add_circle_outline_outlined),
                  )),
                  Expanded(child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('CONTAINED', style: MyText.button(context)!.copyWith(color: Colors.white)),
                    icon: Icon(Icons.add_circle_outline_outlined),
                  ))
                ],
              ),
              Container(height: 15),
              Row(
                mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    label: Text('OUTLINED', style: MyText.button(context)!.copyWith(color: MyColors.primary)),
                    icon: Icon(Icons.add_circle_outline_outlined),
                  )
                ],
              ),
              Container(height: 15),
            ],
          ),
        )
    );
  }

}