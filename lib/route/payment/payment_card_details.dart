import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/utils/tools.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class PaymentCardDetailsRoute extends StatefulWidget {

  PaymentCardDetailsRoute();

  @override
  PaymentCardDetailsRouteState createState() => new PaymentCardDetailsRouteState();
}


class PaymentCardDetailsRouteState extends State<PaymentCardDetailsRoute> {

  String cardNo = "**** **** **** ****";
  String cardExpire = "MM/YY";
  String cardCvv = "***";
  String cardName = "Your Name";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.grey[900],
          title: Text("Credit Card"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(height: 5),
            Container(
              height: 240,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
                  color: Colors.amber[900],
                  elevation: 2,
                  margin: EdgeInsets.all(0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(Img.get('world_map.png'),fit: BoxFit.cover),
                      Container(
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(Img.get("ic_copper_card.png"),
                            width: 60, height: 60
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Spacer(),
                                Image.asset(Img.get("ic_visa.png"), color : Colors.white,
                                    fit: BoxFit.cover, width: 60, height: 30
                                ),
                              ],
                            ),
                            Container(height: 10),
                            Text(cardNo, style: MyText.headline(context)!.copyWith(
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
                                    Text(cardExpire, style: MyText.subhead(context)!.copyWith(
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
                                    Text(cardCvv, style: MyText.subhead(context)!.copyWith(
                                        color: Colors.white, fontFamily: "monospace"
                                    )),
                                  ],
                                ),
                                Container(width: 40)
                              ],
                            ),

                            Container(height: 25),
                            Text(cardName, style: MyText.subhead(context)!.copyWith(
                                color: Colors.white, fontFamily: "monospace"
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    maxLines: 1, maxLength: 19,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Credit card number", counterText: ''),
                    onChanged: (val){
                      setState(() {
                        if(val.length < 2) {
                          cardNo = "**** **** **** ****";
                        } else {
                          cardNo = Tools.getFormattedCardNo(val);
                        }
                      });
                    },
                  ),
                  Container(height: 15),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          maxLines: 1, maxLength: 5,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: "MM/YY", counterText: ''),
                          onChanged: (val){
                            setState(() => cardExpire = val);
                          },
                        ),
                        flex: 1,
                      ),
                      Container(width: 15),
                      Flexible(
                        child: TextField(
                          maxLines: 1, maxLength: 3,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: "CVV", counterText: ''),
                          onChanged: (val){
                            setState(() => cardCvv= val);
                          },
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  Container(height: 15),
                  TextField(
                    maxLines: 1, maxLength: 50,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: "Name on card", counterText: ''),
                    onChanged: (val){
                      setState(() => cardName= val);
                    },
                  ),
                  Container(height: 25),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.amber[900], elevation: 0),
                      child: Text("CONTINUE", style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

