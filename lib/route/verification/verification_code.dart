import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class VerificationCodeRoute extends StatefulWidget {
  VerificationCodeRoute();

  @override
  VerificationCodeRouteState createState() => new VerificationCodeRouteState();
}

class VerificationCodeRouteState extends State<VerificationCodeRoute> {

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctr2 = TextEditingController();
  TextEditingController ctr3 = TextEditingController();
  TextEditingController ctr4 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ctrl.text = "8";
    ctr2.text = "3";
    ctr3.text = "3";
    ctr4.text = "5";

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("VERIFICATION", style: TextStyle(
              color: MyColors.grey_80
          )),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: MyColors.grey_80),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                      Container(height: 30),
                      Container(
                        child: Image.asset(Img.get('img_code_verification.png')),
                        width: 200, height: 200,
                      ),
                      Container(
                        width: 220,
                        child: Text("OTP has been sent to you on your mobile phone. Please enter it below",
                          style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(height: 15),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                              controller: ctrl,
                            ),
                          ),
                          Container(width: 10),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                              controller: ctr2,
                            ),
                          ),
                          Container(width: 10),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                              controller: ctr3,
                            ),
                          ),
                          Container(width: 10),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                              controller: ctr4,
                            ),
                          ),
                        ],
                      ),
                      Container(height: 30),
                      Container(
                        width: 200,
                        child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.transparent),
                          child: Text("VERIFY", style: TextStyle(color: MyColors.primary),),
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

