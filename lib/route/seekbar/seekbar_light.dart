import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/circle_thumb_shape.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SeekbarBasicRoute extends StatefulWidget {

  SeekbarBasicRoute();

  @override
  SeekbarBasicRouteState createState() => new SeekbarBasicRouteState();
}


class SeekbarBasicRouteState extends State<SeekbarBasicRoute> {

  double value1 = 0.7, value2 = 0.3, value3 = 66, value4 = 25;
  void setValue1(double value) => setState(() => value1 = value);
  void setValue2(double value) => setState(() => value2 = value);
  void setValue3(double value) => setState(() => value3 = value);
  void setValue4(double value) => setState(() => value4 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic") as PreferredSizeWidget?,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SliderTheme(
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
                  child: Slider(
                    value: value1,
                    onChanged: setValue1,
                  ),
                ),
                SliderTheme(
                  data: SliderThemeData(
                      thumbColor: MyColors.primary,
                      trackHeight: 2,
                      trackShape: RectangularSliderTrackShape(),
                      activeTrackColor: MyColors.primary,
                      inactiveTrackColor: MyColors.grey_10,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 8,
                      )
                  ),
                  child:
                  Slider(value: value2, onChanged: setValue2,),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbColor: MyColors.accent,
                    trackHeight: 2,
                    trackShape: RectangularSliderTrackShape(),
                    activeTrackColor: MyColors.accent,
                    inactiveTrackColor: MyColors.grey_10,
                    thumbShape: CircleThumbShape(thumbRadius: 8),
                  ),
                  child: Slider(value: value3,
                    onChanged: setValue3,
                    divisions: 3,
                    min: 0, max: 100,
                  ),
                ),
                SliderTheme(
                  data: SliderThemeData(
                      thumbColor: MyColors.primary,
                      trackHeight: 2,
                      trackShape: RectangularSliderTrackShape(),
                      activeTrackColor: MyColors.primary,
                      inactiveTrackColor: MyColors.grey_10,
                      thumbShape: CircleThumbShape(thumbRadius: 8),
                  ),
                  child: Slider(value: value4,
                    onChanged: setValue4,
                    divisions: 4, label: "$value4",
                    min: 0, max: 100,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

