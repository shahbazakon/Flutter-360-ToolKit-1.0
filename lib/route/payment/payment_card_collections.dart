import 'dart:core';

import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class PaymentCardCollectionsRoute extends StatefulWidget {

  PaymentCardCollectionsRoute();

  @override
  PaymentCardCollectionsRouteState createState() => new PaymentCardCollectionsRouteState();
}


class PaymentCardCollectionsRouteState extends State<PaymentCardCollectionsRoute> {

  int page = 0;
  static const int MAX = 4;

  static const List<String> postfix_array = [
    "**** **** **** 6223", "**** **** **** 1027",
    "**** **** **** 5519", "**** **** **** 4661"
  ];

  static const List<String> expire_array = [
    "08/20", "11/23", "05/19", "06/25"
  ];

  static const List<String> cvv_array = [
    "771", "098", "334", "558"
  ];

  static const List<String> logo_array = [
    "ic_visa_new.png", "ic_mastercard_new.png", "ic_mastercard_new.png", "ic_visa_new.png"
  ];

  List<Color?> colorArray = [
    Colors.deepOrange[800],
    Colors.blue[500],
    Colors.amber[500],
    Colors.deepPurple[500]
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(height: 5),
            Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.menu, color: MyColors.primary),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
                Text("P A Y M E N T", style: MyText.medium(context).copyWith(
                    color: MyColors.primary, fontWeight: FontWeight.bold
                )),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.done, color: MyColors.primary),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              height: 230,
              child: PageView(
                children: <Widget>[
                  getCardItem(0), getCardItem(1),
                  getCardItem(2), getCardItem(3),
                ],
                onPageChanged: onPageViewChange,
                controller: PageController(
                  viewportFraction: 0.9,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.center,
                child: buildDots(context),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Amount", style: MyText.subhead(context)!.copyWith(
                    color: Colors.grey[800],
                  )),
                  Container(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: MyText.headline(context)!.copyWith(
                          color: MyColors.grey_90, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Text("Remark", style: MyText.subhead(context)!.copyWith(
                    color: Colors.grey[800],
                  )),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: MyText.headline(context)!.copyWith(
                        color: MyColors.grey_90, fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget getCardItem(int index){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
        color: colorArray[index],
        elevation: 2,
        margin: EdgeInsets.all(0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(Img.get('world_map.png'),fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: new BorderRadius.all(Radius.circular(4))
                        ),
                        width: 50, height: 30,
                        child: Image.asset(Img.get(logo_array[index]), fit: BoxFit.cover),
                      )
                    ],
                  ),
                  Container(height: 10),
                  Text(postfix_array[index], style: MyText.headline(context)!.copyWith(
                      color: Colors.white, fontFamily: "monospace"
                  )),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("EXPIRE", style: MyText.body1(context)!.copyWith(color: MyColors.grey_10)),
                          Container(height: 5),
                          Text(expire_array[index], style: MyText.subhead(context)!.copyWith(
                              color: Colors.white, fontFamily: "monospace"
                          )),
                        ],
                      ),
                      Container(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("CVV", style: MyText.body1(context)!.copyWith(color: MyColors.grey_10)),
                          Container(height: 5),
                          Text(cvv_array[index], style: MyText.subhead(context)!.copyWith(
                              color: Colors.white, fontFamily: "monospace"
                          )),
                        ],
                      ),
                      Container(width: 40)
                    ],
                  ),

                  Container(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("NICK NAME", style: MyText.body1(context)!.copyWith(color: MyColors.grey_10)),
                      Container(height: 5),
                      Text("Anderson Thomas", style: MyText.subhead(context)!.copyWith(
                          color: Colors.white, fontFamily: "monospace"
                      )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  void onPageViewChange(int _page) {
    page = _page;
    setState(() {});
  }

  Widget buildDots(BuildContext context){
    Widget widget;
    List<Widget> dots = [];
    for(int i=0; i<MAX; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? MyColors.accent : Colors.grey[300],
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }

}

