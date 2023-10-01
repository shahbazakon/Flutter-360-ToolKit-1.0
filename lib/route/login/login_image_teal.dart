import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class LoginImageTealRoute extends StatefulWidget {

  LoginImageTealRoute();

  @override
  LoginImageTealRouteState createState() => new LoginImageTealRouteState();
}

class LoginImageTealRouteState extends State<LoginImageTealRoute> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.cyan[800],
      appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(0)
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(Img.get('image_26.jpg'), fit: BoxFit.cover),
            width: double.infinity, height: double.infinity,
          ),
          Container(color: Colors.cyan[800]!.withOpacity(0.9)),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(height: 30),
                Text("Welcome!", style: MyText.display2(context)!.copyWith(color: Colors.white)),
                Container(height: 5),
                Text("Hope you enjoy the stay", style: MyText.title(context)!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w300
                )),
                Spacer(),
                Container(height: 3, width:40, color: Colors.white),
                Container(height: 5),
                Text("Log in", style: MyText.medium(context).copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold
                )),
                Spacer(),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "USERNAME", labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
                Container(height: 25),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "PASSWORD", labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
                Container(height: 15),
                FloatingActionButton(
                  heroTag: "fab", elevation: 0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.chevron_right, color: Colors.cyan[800]),
                  onPressed: () { print('Clicked'); },
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent,),
                    child: Text("Sign up for an account?", style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

