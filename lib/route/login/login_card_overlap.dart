import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class LoginCardOverlapRoute extends StatefulWidget {

  LoginCardOverlapRoute();

  @override
  LoginCardOverlapRouteState createState() => new LoginCardOverlapRouteState();
}


class LoginCardOverlapRouteState extends State<LoginCardOverlapRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: MyColors.primary)),
      body: Stack(
        children: <Widget>[
          Container(color: MyColors.primary, height: 220),
          Column(
            children: <Widget>[
              Container(height: 40),
              Container(
                child: Image.asset(
                  Img.get('logo_small_round.png'),
                  color: Colors.white,
                ),
                width: 80, height: 80,
              ),
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                margin: EdgeInsets.all(25),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child :  Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(height: 25),
                      Text("SIGN IN", style: MyText.title(context)!.copyWith(
                          color: Colors.green[500], fontWeight: FontWeight.bold
                      )),
                      TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(labelText: "Email",
                          labelStyle: TextStyle(color: Colors.blueGrey[400]),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey[400]!, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey[400]!, width: 2),
                          ),
                        ),
                      ),
                      Container(height: 25),
                      TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(labelText: "Password",
                          labelStyle: TextStyle(color: Colors.blueGrey[400]),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey[400]!, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey[400]!, width: 2),
                          ),
                        ),
                      ),
                      Container(height: 25),
                      Container(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: MyColors.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)
                            ),
                          ),
                          child: Text("SUBMIT", style: TextStyle(color: Colors.white),),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.transparent),
                          child: Text("New user? Sign Up", style: TextStyle(color: MyColors.primaryLight),),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          )
        ],
      ),

    );
  }
}

