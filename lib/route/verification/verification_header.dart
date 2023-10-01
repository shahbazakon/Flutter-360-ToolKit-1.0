import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class VerificationHeaderRoute extends StatefulWidget {

  VerificationHeaderRoute();

  @override
  VerificationHeaderRouteState createState() => new VerificationHeaderRouteState();
}


class VerificationHeaderRouteState extends State<VerificationHeaderRoute> {

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctr2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ctrl.text = "+61";
    ctr2.text = "9767 0587 7834";

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark
            ),
            bottom: PreferredSize(
            preferredSize: Size.fromHeight(90),
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(height: 90),
                child: Column(
                  children: <Widget>[
                    Text("VERIFICATION", style: MyText.subhead(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                    Container(height: 5),
                    Container(
                      width: 250,
                      child: Text("You will get SMS with a confirmation code to this number.",
                          textAlign: TextAlign.center,
                          style: MyText.body1(context)!.copyWith(color: Colors.white)
                      ),
                    )
                  ],
                ),
              ),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          }),

      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(width: 250, height: double.infinity,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      enabled: false,
                      keyboardType: TextInputType.text,
                      style: MyText.medium(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                      controller: ctrl,
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: MyText.medium(context).copyWith(color: MyColors.grey_60, fontWeight: FontWeight.bold),
                      controller: ctr2,
                    ),
                    flex: 4,
                  ),
                  Container(width: 10),
                  Icon(Icons.check_circle, color: Colors.green[400])
                ],
              ),
              Container(height: 20),
              Text("Please input code below",
                  style: MyText.body1(context)!.copyWith()
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                    ),
                  ),
                  Container(width: 10),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: MyText.headline(context)!.copyWith(color: MyColors.grey_90,),
                    ),
                  ),
                ],
              ),
              Container(height: 10),
              Text("02:00",
                  style: MyText.body1(context)!.copyWith()
              ),
              Spacer(),
              Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)
                  )),
                  child: Text("CONTINUE", style: TextStyle(color: Colors.white),),
                  onPressed: (){},
                ),
              ),
              Container(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("RESEND CODE", style: TextStyle(color: MyColors.grey_40),),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

