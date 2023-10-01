import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormLoginRoute extends StatefulWidget {

  FormLoginRoute();

  @override
  FormLoginRouteState createState() => new FormLoginRouteState();
}


class FormLoginRouteState extends State<FormLoginRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.fromLTRB(60, 15, 0, 25),
              alignment: Alignment.bottomLeft,
              constraints: BoxConstraints.expand(height: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: MyText.headline(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                  Container(height: 10),
                  Text("and you can discover best news around \nthe world", style: MyText.body1(context)!.copyWith(color: Colors.white)),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(150)
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Align(
          child: Container(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 50),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                Container(height: 5),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password (optional)"),
                ),
                Container(height: 5),
                Row(
                  children: <Widget>[
                    Checkbox(value: false, onChanged: (value) {}, materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    Text("Remember me", style: MyText.body1(context)!.copyWith(color: Colors.grey[800])),
                  ],
                ),
                Container(height: 15),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: MyColors.accent, elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0)
                          )
                      ),
                      child: Text("LOGIN", style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                   ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

