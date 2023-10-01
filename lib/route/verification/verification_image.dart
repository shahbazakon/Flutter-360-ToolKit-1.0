
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class VerificationImageRoute extends StatefulWidget {

  VerificationImageRoute();

  @override
  VerificationImageRouteState createState() => new VerificationImageRouteState();
}


class VerificationImageRouteState extends State<VerificationImageRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(Img.get('image_25.jpg'), fit: BoxFit.cover),
            width: double.infinity, height: double.infinity,
          ),
          Container(color: Colors.black.withOpacity(0.7)),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 300,
              height: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(height:70),
                  Container(
                    child: Image.asset(
                      Img.get('logo_small.png'),
                      color: Colors.white,
                    ),
                    width: 80, height: 80,
                  ),
                  Container(height: 5),
                  Text("Welcome to MaterialX", style: MyText.title(context)!.copyWith(color: MyColors.grey_10)),
                  Container(height: 5),
                  Spacer(),
                  Text("Enter Code", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_20)),
                  TextField(
                    style: TextStyle(color: Colors.white), textAlign: TextAlign.center,
                    keyboardType: TextInputType.number, cursorColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  Container(height: 15),
                  Text("We sent the confirmation code to your mobile. please check your inbox.",
                      textAlign: TextAlign.center,
                      style: MyText.subhead(context)!.copyWith(color: MyColors.grey_20)
                  ),
                  Container(height: 15),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    child: Text("RESEND", style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)
                        )
                      ),
                      child: Text("CONTINUE", style: TextStyle(color: Colors.white)),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                    width: double.infinity, height: 20,
                    child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.transparent),
                      child: Text("Already have an account? Sign In", style: TextStyle(color: Colors.white),),
                      onPressed: () {},
                    ),
                  ),
                  Container(height: 20),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () { Navigator.pop(context);},
          ),
        ],
      ),
    );
  }

}

