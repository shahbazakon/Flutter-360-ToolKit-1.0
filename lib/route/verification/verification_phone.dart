import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class VerificationPhoneRoute extends StatefulWidget {
  VerificationPhoneRoute();

  @override
  VerificationPhoneRouteState createState() => new VerificationPhoneRouteState();
}

class VerificationPhoneRouteState extends State<VerificationPhoneRoute> {

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctr2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ctrl.text = "+61";
    ctr2.text = "9767 0587 7834";

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Container(height: 50),
                      Container(
                        child: Image.asset(Img.get('img_number_verification.png')),
                        width: 220, height: 220,
                      ),
                      Text("Verify Your Number", style: MyText.title(context)!.copyWith(
                          color: MyColors.grey_80, fontWeight: FontWeight.bold
                      )),
                      Container(height: 15),
                      Container(
                        width: 220,
                        child: Text("Please enter your mobile number to receive a verification code. Carrier rates may apply",
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(height: 15),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              enabled: false,
                              keyboardType: TextInputType.text,
                              style: MyText.headline(context)!.copyWith(
                                color: MyColors.grey_90,
                              ),
                              controller: ctrl,
                            ),
                          ),
                          Container(width: 10),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              style: MyText.headline(context)!.copyWith(
                                  color: MyColors.grey_90, fontWeight: FontWeight.bold
                              ),
                              controller: ctr2,
                            ),
                            flex: 4,
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0)
                            )
                          ),
                          child: Text("CONTINUE", style: TextStyle(color: Colors.white)),
                          onPressed: (){},
                        ),
                      ),
                      Container(
                        width: 200,
                        child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.transparent),
                          child: Text("NO, OTHER TIME", style: TextStyle(color: MyColors.grey_40)),
                          onPressed: (){},
                        ),
                      )
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              )
            ],
          ),
        ]
    ),

    );
  }
}

