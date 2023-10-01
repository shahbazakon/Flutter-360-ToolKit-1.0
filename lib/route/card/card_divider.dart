import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class CardDividerRoute extends StatefulWidget {

  CardDividerRoute();

  @override
  CardDividerRouteState createState() => new CardDividerRouteState();
}


class CardDividerRouteState extends State<CardDividerRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Divider") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 35, left: 25, right: 25),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Img.get('image_24.jpg'),
                    height: 180, width: double.infinity, fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Cafe Badilico", style: MyText.headline(context)!.copyWith(color: MyColors.grey_80)),
                        Container(height: 5),
                        Row(
                          children: <Widget>[
                            StarRating(starCount: 5, rating: 4.7, color: Colors.yellow, size: 18), Container(width: 5),
                            Text("4.7 (51)", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text("\$ - Italian cafe", style: MyText.medium(context).copyWith(color: MyColors.grey_80)),
                        ),
                        Container(
                          child: Text(MyStrings.middle_lorem_ipsum, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(height: 1),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tonight's availability", style: MyText.medium(context).copyWith(color: MyColors.grey_80)),
                        Container(height: 5),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[300], elevation: 0,
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0)),
                              ),
                              child: Text("5:30PM", style: TextStyle(color: MyColors.grey_60)),
                              onPressed: (){},
                            ),
                            Container(width: 8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[300], elevation: 0,
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0)),
                              ),
                              child: Text("7:30PM", style: TextStyle(color: MyColors.grey_60)),
                              onPressed: (){},
                            ),
                            Container(width: 8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[300], elevation: 0,
                                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0)),
                              ),
                              child: Text("8:00PM", style: TextStyle(color: MyColors.grey_60)),
                              onPressed: (){},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.transparent),
                      child: Text("RESERVE", style: TextStyle(color: MyColors.primary),),
                      onPressed: (){},
                    ),
                  ),
                  Container(height: 5)
                ],
              ),
            ),
            Container(height: 10),
          ],
        ),
      ),
    );
  }
}

