import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SeekbarRangeRoute extends StatefulWidget {

  SeekbarRangeRoute();

  @override
  SeekbarRangeRouteState createState() => new SeekbarRangeRouteState();
}


class SeekbarRangeRouteState extends State<SeekbarRangeRoute> {

  RangeValues _currentRangeValues1 = const RangeValues(20, 60);
  RangeValues _currentRangeValues2 = const RangeValues(5, 50);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Range Seekbar") as PreferredSizeWidget?,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Container(width: 20),
                    Text(_currentRangeValues1.start.toInt().toString(), style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                    Spacer(),
                    Text(_currentRangeValues1.end.toInt().toString(), style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                    Container(width: 20),
                  ],
                ),
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
                  child: RangeSlider(
                    values: _currentRangeValues1,
                    min: 0, max: 100,
                    labels: RangeLabels(
                      _currentRangeValues1.start.round().toString(),
                      _currentRangeValues1.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues1 = values;
                      });
                    },
                  ),
                ),
                Container(height: 20),
                Row(
                  children: [
                    Container(width: 20),
                    Text(_currentRangeValues2.start.toInt().toString(), style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                    Spacer(),
                    Text(_currentRangeValues2.end.toInt().toString(), style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                    Container(width: 20),
                  ],
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
                  child: RangeSlider(
                    values: _currentRangeValues2,
                    min: 0, max: 100,
                    labels: RangeLabels(
                      _currentRangeValues2.start.round().toString(),
                      _currentRangeValues2.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues2 = values;
                      });
                    },
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

