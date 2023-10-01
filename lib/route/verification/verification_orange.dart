import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class VerificationOrangeRoute extends StatefulWidget {

  VerificationOrangeRoute();

  @override
  VerificationOrangeRouteState createState() => new VerificationOrangeRouteState();
}


class VerificationOrangeRouteState extends State<VerificationOrangeRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepOrange[400],
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.deepOrange[400]),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 240,
              height: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(height:80),
                  Text("Verify Account", style: MyText.title(context)!.copyWith(color: Colors.white)),
                  Container(height: 10),
                  Text("Please send verification code we sent to your email address",
                      textAlign: TextAlign.center,
                      style: MyText.medium(context).copyWith(color: MyColors.grey_10)
                  ),
                  Container(height: 5),
                  Spacer(),
                  Container(
                    width: 180,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white), textAlign: TextAlign.center,
                            keyboardType: TextInputType.number, cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: MyColors.grey_10, width: 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                        ),
                        Container(width: 10),
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white), textAlign: TextAlign.center,
                            keyboardType: TextInputType.number, cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: MyColors.grey_10, width: 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                        ),
                        Container(width: 10),
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white), textAlign: TextAlign.center,
                            keyboardType: TextInputType.number, cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: MyColors.grey_10, width: 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                        ),
                        Container(width: 10),
                        Flexible(
                          child: TextField(
                            style: TextStyle(color: Colors.white), textAlign: TextAlign.center,
                            keyboardType: TextInputType.number, cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: MyColors.grey_10, width: 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("I didn't receive the code", style: TextStyle(color: Colors.white)),
                  Container(height: 30,
                    child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.transparent),
                      child: Text("Please Re-Send", style: MyText.subhead(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ),
                  Container(height: 50),
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

