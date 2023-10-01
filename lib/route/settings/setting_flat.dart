import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SettingFlatRoute extends StatefulWidget {
  SettingFlatRoute();

  @override
  SettingFlatRouteState createState() => new SettingFlatRouteState();
}

class SettingFlatRouteState extends State<SettingFlatRoute> {

  @override
  Widget build(BuildContext context) {
    bool isSwitched1 = true, isSwitched2 = true;
    bool isSwitched3 = true, isSwitched4 = true;
    bool isSwitched5 = false, isSwitched6 = false;

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("Settings", style: MyText.headline(context)!.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold
              )),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  children: <Widget>[
                    Text("Select Language", style: MyText.subhead(context)!.copyWith(
                        color: MyColors.grey_90, fontWeight: FontWeight.bold
                    )),
                    Spacer(),
                    Text("English, US", style: MyText.subhead(context)!.copyWith(color: MyColors.primary)),
                    Container(width: 10)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Real Time Mode", style: MyText.subhead(context)!.copyWith(
                            color: MyColors.grey_90, fontWeight: FontWeight.bold
                        )),
                        Spacer(),
                        Switch(
                          value: isSwitched1,
                          onChanged: (value) {setState(() { isSwitched1 = value; });},
                          activeColor: MyColors.primary,
                          inactiveThumbColor: Colors.grey,
                        )
                      ],
                    ),
                    Text(MyStrings.middle_lorem_ipsum, style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Container(height: 15)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Game Sound", style: MyText.subhead(context)!.copyWith(
                            color: MyColors.grey_90, fontWeight: FontWeight.bold
                        )),
                        Spacer(),
                        Switch(
                          value: isSwitched2,
                          onChanged: (value) {setState(() { isSwitched2 = value; });},
                          activeColor: MyColors.primary,
                          inactiveThumbColor: Colors.grey,
                        )
                      ],
                    ),
                    Text("Sound during gameplay", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Container(height: 15)
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            Container(height: 25),
            Container(
              child: Text("Push Notification", style: MyText.subhead(context)!.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold
              )),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("Recommended tournaments", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Spacer(),
                    Switch(
                      value: isSwitched3,
                      onChanged: (value) {setState(() { isSwitched3 = value; });},
                      activeColor: MyColors.primary,
                      inactiveThumbColor: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("New Deals & Rewards", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Spacer(),
                    Switch(
                      value: isSwitched4,
                      onChanged: (value) {setState(() { isSwitched4 = value; });},
                      activeColor: MyColors.primary,
                      inactiveThumbColor: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("Occasional promo", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Spacer(),
                    Switch(
                      value: isSwitched5,
                      onChanged: (value) {setState(() { isSwitched5 = value; });},
                      activeColor: MyColors.primary,
                      inactiveThumbColor: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text("Event & Match", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[400]
                    )),
                    Spacer(),
                    Switch(
                      value: isSwitched6,
                      onChanged: (value) {setState(() { isSwitched6 = value; });},
                      activeColor: MyColors.primary,
                      inactiveThumbColor: Colors.grey,
                    )
                  ],
                ),
              ),
            ),

            Divider(height: 0),
            Container(height: 25),
            Container(
              child: Text("More", style: MyText.subhead(context)!.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold
              )),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text("Ask a Question", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[400]
                )),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text("F A Q", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[400]
                )),
              ),
            ),
            Divider(height: 0),
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text("Privacy Policy", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[400]
                )),
              ),
            ),
            Divider(height: 0),
            Container(height: 15),
          ],
        ),
      ),
    );
  }
}

