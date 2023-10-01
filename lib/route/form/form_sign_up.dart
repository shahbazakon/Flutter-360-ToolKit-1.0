import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class FormSignUpRoute extends StatefulWidget {

  FormSignUpRoute();

  @override
  FormSignUpRouteState createState() => new FormSignUpRouteState();
}


class FormSignUpRouteState extends State<FormSignUpRoute> {

  String? gender = "Female";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Sign Up") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 20),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Full Name"),
                ),
                Container(height: 5),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "User Name"),
                ),
                Container(height: 5),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                Container(height: 5),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                Container(height: 5),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Re-type Password"),
                ),
                Container(height: 10),
                Text("Gender", style: MyText.subhead(context)!.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.w500
                )),
                Row(
                  children: <Widget>[
                    Radio(
                      value: "Female",
                      groupValue: gender,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (String? value) {
                        setState(() { gender = value;});
                      },
                    ),
                    Text("Female", style: MyText.body1(context)!.copyWith(color: Colors.grey[800])),
                    Container(width: 10),
                    Radio(
                      value: "Male",
                      groupValue: gender,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (String? value) {
                        setState(() { gender = value;});
                      },
                    ),
                    Text("Male", style: MyText.body1(context)!.copyWith(color: Colors.grey[800])),
                  ],
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: MyColors.accent,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0)
                          )
                      ),
                      child: Text("REGISTER", style: TextStyle(color: Colors.white)),
                      onPressed: (){},
                   ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800], elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)
                        )
                    ),
                    child: Text("REGISTER WITH FACEBOOK", style: TextStyle(color: Colors.white)),
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

