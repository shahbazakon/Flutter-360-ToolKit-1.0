
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class LoginCardLightRoute extends StatefulWidget {

  LoginCardLightRoute();

  @override
  LoginCardLightRouteState createState() => new LoginCardLightRouteState();
}


class LoginCardLightRouteState extends State<LoginCardLightRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.grey_5,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.white)),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Text("Sign in", style: MyText.title(context)!.copyWith(
                      color: Colors.blue[600], fontWeight: FontWeight.bold
                  )),
                  Container(height: 10),
                  Container(height: 4, width:40, color: Colors.blue[600]),
                  Container(height: 25),
                  Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            Container(height: 25),
                            TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: "USERNAME", labelStyle: MyText.caption(context)
                              ),
                            ),
                            Container(height: 25),
                            TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: "PASSWORD", labelStyle: MyText.caption(context)
                              ),
                            ),
                            Container(height: 5),
                            InkWell(
                              child: Row(
                                children: <Widget>[
                                  Checkbox(value: false, onChanged: (value) {}),
                                  Text("Keep me Signed in", style: MyText.body2(context)!.copyWith(
                                      color: Colors.blue[600]
                                  )),
                                ],
                              ),
                              onTap: (){ setState(() {}); },
                            ),
                            Container(height: 5),
                            Row(
                              children: <Widget>[
                                Spacer(),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.transparent),
                                  child: Text("Forgot Password?", style: TextStyle(color: MyColors.grey_20)),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity, height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue[600], elevation: 0),
              child: Text("SIGNIN", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
              onPressed: (){ },
            ),
          )
        ],
      ),
    );
  }
}

