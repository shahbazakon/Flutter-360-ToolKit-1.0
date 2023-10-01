import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormAddressRoute extends StatefulWidget {

  FormAddressRoute();

  @override
  FormAddressRouteState createState() => new FormAddressRouteState();
}


class FormAddressRouteState extends State<FormAddressRoute> {

  final TextEditingController inputController1 = new TextEditingController();
  final TextEditingController inputController2 = new TextEditingController();
  final TextEditingController inputController3 = new TextEditingController();
  final TextEditingController inputController4 = new TextEditingController();
  final TextEditingController inputController5 = new TextEditingController();
  final TextEditingController inputController6 = new TextEditingController();
  final TextEditingController inputController7 = new TextEditingController();

  @override
  void initState() {
    super.initState();
    inputController1.text = "John";
    inputController2.text = "Smith";
    inputController3.text = "john.smith@mail.com";
    inputController4.text = "083 2374 2342";
    inputController5.text = "California";
    inputController6.text = "6625";
    inputController7.text = "United State";
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("FIRST NAME", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(0), elevation: 0,
                  child: Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(maxLines: 1,
                      controller: inputController1,
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                    ),
                  ),
                ),
                Container(height: 15),
                Text("LAST NAME", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(0), elevation: 0,
                  child: Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(maxLines: 1,
                      controller: inputController2,
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                    ),
                  ),
                ),
                Container(height: 15),
                Text("EMAIL", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(0), elevation: 0,
                  child: Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(maxLines: 1, keyboardType: TextInputType.emailAddress,
                      controller: inputController3,
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                    ),
                  ),
                ),
                Container(height: 15),
                Text("PHONE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(0), elevation: 0,
                  child: Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                      controller: inputController4,
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                    ),
                  ),
                ),
                Container(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("STATE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                          Container(height: 5),
                          Card(
                            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: EdgeInsets.all(0), elevation: 0,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: <Widget>[
                                  Container(width: 15),
                                  Expanded(
                                    child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                                      controller: inputController5,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.expand_more, color: MyColors.grey_40)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("ZIP CODE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                          Container(height: 5),
                          Card(
                            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: EdgeInsets.all(0), elevation: 0,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                                controller: inputController6,
                                decoration: InputDecoration(contentPadding: EdgeInsets.all(-12), border: InputBorder.none,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(height: 15),
                Text("COUNTRY", style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
                Container(height: 5),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(0), elevation: 0,
                  child: Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: <Widget>[
                        Container(width: 15),
                        Expanded(
                          child: TextField(maxLines: 1, keyboardType: TextInputType.phone,
                            controller: inputController7,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.expand_more, color: MyColors.grey_40)
                      ],
                    ),
                  ),
                ),
                Container(height: 15),
                Container(
                  width: double.infinity, height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: MyColors.primary, elevation: 0),
                    child: Text("SUBMIT", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                    onPressed: (){ },
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

