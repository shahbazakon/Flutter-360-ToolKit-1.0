import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class LoginSimpleLightRoute extends StatefulWidget {
  LoginSimpleLightRoute();

  @override
  LoginSimpleLightRouteState createState() => new LoginSimpleLightRouteState();
}

class LoginSimpleLightRouteState extends State<LoginSimpleLightRoute> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 30),
            Container(
              child: Image.asset(
                  Img.get('logo_small.png')),
              width: 80, height: 80,
            ),
            Container(height: 15),
            Text("Welcome Back,", style: MyText.title(context)!.copyWith(
                color: MyColors.grey_80,
                fontWeight: FontWeight.bold
            )),
            Container(height: 5),
            Text("Sign in to continue", style: MyText.subhead(context)!.copyWith(
                color: Colors.blueGrey[300],
                fontWeight: FontWeight.bold
            )),
            Spacer(),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Email"
              ),
            ),
            Container(height: 25),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Password"
              ),
            ),
            Container(height: 5),
            Row(
              children: <Widget>[
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("Forgot Password?", style: TextStyle(color: Colors.purpleAccent[400]),),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent[400], elevation: 0),
                child: Text("Login", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.transparent),
                child: Text("New user? Sign Up", style: TextStyle(color: Colors.purpleAccent[400])),
                onPressed: () {},
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),

    );
  }

}