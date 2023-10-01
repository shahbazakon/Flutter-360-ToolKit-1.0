
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class PaymentProfileRoute extends StatefulWidget {

  PaymentProfileRoute();

  @override
  PaymentProfileRouteState createState() => new PaymentProfileRouteState();
}


class PaymentProfileRouteState extends State<PaymentProfileRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        backgroundColor: MyColors.primary,
        title: Text("PAYMENTS"), centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {Navigator.pop(context);},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(width: double.infinity, color: MyColors.primary, height: 50),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  elevation: 2,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: MyColors.grey_10,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(Img.get("photo_male_1.jpg")),
                          ),
                        ),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Anderson Thomas", style: MyText.medium(context).copyWith(
                                  color: MyColors.primary, fontWeight: FontWeight.bold
                              )),
                              Container(height: 2),
                              Text("Paris, France", style: MyText.body1(context)!.copyWith(
                                  color: MyColors.grey_40
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(width: 5),
                      Text("Linked Cards", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.bold
                      )),
                      Spacer(),
                      Text("3 Card(s)", style: MyText.subhead(context)!.copyWith(
                          color: MyColors.primary, fontWeight: FontWeight.bold
                      )),
                      Container(width: 5),
                    ],
                  ),
                  Container(height: 10),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Primary Card", style: MyText.medium(context).copyWith(
                                    color: MyColors.grey_80, fontWeight: FontWeight.bold
                                )),
                                Container(height: 40),
                                Text("Card Number", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("XXXX - XXXX - XXXX - 9867", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Card Holder Name", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("Anderson Thomas", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(Img.get("ic_mastercard_new.png"), width: 40, height: 40),
                                ),
                                Container(height: 25),
                                Text("Exp.", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("05 / 24", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("CVV / CVC", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("***", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Secondary Card", style: MyText.medium(context).copyWith(
                                    color: MyColors.grey_80, fontWeight: FontWeight.bold
                                )),
                                Container(height: 40),
                                Text("Card Number", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("XXXX - XXXX - XXXX - 6108", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Card Holder Name", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("Anderson Thomas", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(Img.get("ic_visa_new.png"), width: 40, height: 40),
                                ),
                                Container(height: 25),
                                Text("Exp.", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("06 / 25", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("CVV / CVC", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("***", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
                    color: Colors.white,
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Additional Card", style: MyText.medium(context).copyWith(
                                    color: MyColors.grey_80, fontWeight: FontWeight.bold
                                )),
                                Container(height: 40),
                                Text("Card Number", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("XXXX - XXXX - XXXX - 2356", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("Card Holder Name", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("Anderson Thomas", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(Img.get("ic_visa_new.png"), width: 40, height: 40),
                                ),
                                Container(height: 25),
                                Text("Exp.", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("01 / 24", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                                Container(height: 20),
                                Text("CVV / CVC", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                                Container(height: 5),
                                Text("***", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

