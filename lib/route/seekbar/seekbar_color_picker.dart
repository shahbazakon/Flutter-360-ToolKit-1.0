import 'dart:async';


import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';

import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SeekbarColorPickerRoute extends StatefulWidget {

  SeekbarColorPickerRoute();

  @override
  SeekbarColorPickerRouteState createState() => new SeekbarColorPickerRouteState();
}


class SeekbarColorPickerRouteState extends State<SeekbarColorPickerRoute> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        showDialog(context: context,builder: (_) => DialogColorPicker() );
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Color Picker") as PreferredSizeWidget?,
      body: Container(
        width: double.infinity, height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink, elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30)
                ),
              ),
              child: Text("PICK COLOR", style: TextStyle(color: Colors.white)),
              onPressed: (){
                showDialog(context: context,builder: (_) => DialogColorPicker() );
              },
            )
          ],
        ),
      ),
    );
  }
}

//  dialog PROJECT -------------------------------------------------------------

class DialogColorPicker extends StatefulWidget {

  DialogColorPicker();

  @override
  DialogColorPickerState createState() => new DialogColorPickerState();
}

class DialogColorPickerState extends State<DialogColorPicker>{

  double value1 = 127, value2 = 127, value3 = 210;
  void setValue1(double value) => setState(() => value1 = value);
  void setValue2(double value) => setState(() => value2 = value);
  void setValue3(double value) => setState(() => value3 = value);

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 300,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Container(height: 260, color: Color.fromARGB(255, value1.round(), value2.round(), value3.round())),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("R",style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                          Expanded(child: SliderTheme(
                            data: SliderThemeData(
                                thumbColor: MyColors.accent,
                                trackHeight: 2,
                                trackShape: RectangularSliderTrackShape(),
                                activeTrackColor: MyColors.accent,
                                inactiveTrackColor: MyColors.grey_10,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 8,
                                )
                            ),
                            child: Slider( value: value1, max : 255, onChanged: setValue1),
                          )),
                          Container(
                            width: 30,
                            child: Text(value1.round().toString(),style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("G",style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                          Expanded(child: SliderTheme(
                            data: SliderThemeData(
                                thumbColor: MyColors.accent, trackHeight: 2,
                                trackShape: RectangularSliderTrackShape(),
                                activeTrackColor: MyColors.accent,
                                inactiveTrackColor: MyColors.grey_10,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 8,
                                )
                            ),
                            child: Slider( value: value2, max : 255, onChanged: setValue2),
                          )),
                          Container(
                            width: 30,
                            child: Text(value2.round().toString(),style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("B",style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                          Expanded(child: SliderTheme(
                            data: SliderThemeData(
                                thumbColor: MyColors.accent, trackHeight: 2,
                                trackShape: RectangularSliderTrackShape(),
                                activeTrackColor: MyColors.accent,
                                inactiveTrackColor: MyColors.grey_10,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 8,
                                )
                            ),
                            child: Slider( value: value3, max : 255, onChanged: setValue3),
                          )),
                          Container(
                            width: 30,
                            child: Text(value3.round().toString(),style: MyText.body2(context)!.copyWith(color: MyColors.grey_80)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}