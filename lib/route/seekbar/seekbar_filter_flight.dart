import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SeekbarFilterFlightRoute extends StatefulWidget {

  SeekbarFilterFlightRoute();

  @override
  SeekbarFilterFlightRouteState createState() => new SeekbarFilterFlightRouteState();
}


class SeekbarFilterFlightRouteState extends State<SeekbarFilterFlightRoute> {

  RangeValues _currentRangeValues1 = const RangeValues(0, 50);
  RangeValues _currentRangeValues2 = const RangeValues(0, 100);

  List<RxBool> stops = [
    false.obs, true.obs, true.obs
  ];
  List<RxBool> cabin = [
    true.obs, true.obs, false.obs
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light
          ), elevation: 1,
          iconTheme: IconThemeData(color: MyColors.grey_60),
          title: Text("Filter", style: MyText.body2(context)!.copyWith(
              color: MyColors.grey_40
          )),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.done), onPressed: () {
              Navigator.pop(context);
            }),// overflow menu
          ]
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
        child: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text("Stops", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(width: 16),
                  Text("Nonstop", style: TextStyle(color: MyColors.grey_60)), Spacer(), Checkbox(value: stops[0].value, onChanged: (value) {}),
                ],
              ),
              onTap: (){ stops[0].value = !stops[0].value; },
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(width: 16),
                  Text("1 Stop", style: TextStyle(color: MyColors.grey_60)), Spacer(), Checkbox(value: stops[1].value, onChanged: (value) {}),
                ],
              ),
              onTap: (){ stops[1].value = !stops[1].value; },
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(width: 16),
                  Text("2 Stop", style: TextStyle(color: MyColors.grey_60)), Spacer(), Checkbox(value: stops[2].value, onChanged: (value) {}),
                ],
              ),
              onTap: (){ stops[2].value = !stops[2].value; },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text("Duration", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("0h 35m - 28h 00m", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
            ),
            SliderTheme(
              data: SliderThemeData(
                  thumbColor: MyColors.accentLight,
                  trackHeight: 2,
                  trackShape: RectangularSliderTrackShape(),
                  activeTrackColor: MyColors.accentLight,
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text("Cabin", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(width: 16),
                  Text("Economy", style: TextStyle(color: MyColors.grey_60)), Spacer(), Checkbox(value: cabin[0].value, onChanged: (value) {}),
                ],
              ),
              onTap: (){ cabin[0].value = !cabin[0].value; },
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(width: 16),
                  Text("Business", style: TextStyle(color: MyColors.grey_60)), Spacer(), Checkbox(value: cabin[1].value, onChanged: (value) {}),
                ],
              ),
              onTap: (){ cabin[1].value = !cabin[1].value; },
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(width: 16),
                  Text("First Class", style: TextStyle(color: MyColors.grey_60)), Spacer(), Checkbox(value: cabin[2].value, onChanged: (value) {}),
                ],
              ),
              onTap: (){ cabin[2].value = !cabin[2].value; },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text("Price", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("\$8.888", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
            ),
            SliderTheme(
              data: SliderThemeData(
                  thumbColor: MyColors.accentLight,
                  trackHeight: 2,
                  trackShape: RectangularSliderTrackShape(),
                  activeTrackColor: MyColors.accentLight,
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
            Container(height: 20)
          ],
        )),
      ),
    );
  }
}

