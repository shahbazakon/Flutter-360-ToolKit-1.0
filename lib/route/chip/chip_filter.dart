import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChipFilterRoute extends StatefulWidget {

  ChipFilterRoute();

  @override
  ChipFilterRouteState createState() => new ChipFilterRouteState();
}


class ChipFilterRouteState extends State<ChipFilterRoute> {

  List<String> amenitiesText = [
    "Elevator", "Washer / Dryer", "Fireplace",
    "Wheelchair access", "Dog OK", "Cat OK"
  ];
  List<int> amenitiesIndex = List.generate(6, (index) => index);
  List<RxBool> amenitiesFlag = List.generate(6, (index) => false.obs);

  List<String> facilitiesText = [
    "WiFi", "Swimming Pool", "Rooftop", "Bathtub",
    "Parking", "Fitness Center", "Balcony", "Restaurant",
    "Hot Water"
  ];
  List<int> facilitiesIndex = List.generate(9, (index) => index);
  List<RxBool> facilitiesFlag = List.generate(9, (index) => false.obs);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark
      ),
        title: Text("Filter result"), titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text("Amenities", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
            ),
            Container(height: 15),
            Wrap(
              spacing: 10, runSpacing: -10,
              children: amenitiesIndex.map((int index) => Obx(() =>
                  ChoiceChip(
                      avatar: amenitiesFlag[index].value ? Container(
                        padding: EdgeInsets.only(left: 10), child: Icon(Icons.check, size: 22, color: MyColors.grey_60),
                      ) : null,
                      padding: EdgeInsets.only(right: 10, left: amenitiesFlag[index].value ? 5 : 10),
                      visualDensity: VisualDensity(vertical: VisualDensity.maximumDensity),
                      selected: amenitiesFlag[index].value, label: Text(amenitiesText[index]), labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      side: BorderSide(color: MyColors.grey_20, width: 1.2),
                      labelStyle: TextStyle(color: MyColors.grey_80),
                      backgroundColor: Colors.grey[100], pressElevation: 1,
                      selectedColor: Colors.grey[100],
                      onSelected: (bool selected) {
                        amenitiesFlag[index].value = !amenitiesFlag[index].value;
                      }
                  )
              )).toList(),
            ),
            Container(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text("Facilities", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
            ),
            Container(height: 15),
            Wrap(
              spacing: 10, runSpacing: -10,
              children: facilitiesIndex.map((int index) => Obx(() =>
                ChoiceChip(
                  avatar: facilitiesFlag[index].value ? Container(
                    padding: EdgeInsets.only(left: 10), child: Icon(Icons.check, size: 22, color: MyColors.grey_60),
                  ) : null,
                  padding: EdgeInsets.only(right: 10, left: facilitiesFlag[index].value ? 5 : 10),
                  visualDensity: VisualDensity(vertical: VisualDensity.maximumDensity),
                  selected: facilitiesFlag[index].value, label: Text(facilitiesText[index]), labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelStyle: TextStyle(color: MyColors.grey_80),
                  backgroundColor: MyColors.grey_10, pressElevation: 1,
                  selectedColor: Colors.blue[200],
                  onSelected: (bool selected) {
                    facilitiesFlag[index].value = !facilitiesFlag[index].value;
                  }
                )
              )).toList(),
            ),
            Container(height: 15),
          ],
        ),
      ),
    );
  }
}

