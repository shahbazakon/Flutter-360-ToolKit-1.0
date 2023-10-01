
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';

class FormWithIconRoute extends StatefulWidget {

  FormWithIconRoute();

  @override
  FormWithIconRouteState createState() => new FormWithIconRouteState();
}


class FormWithIconRouteState extends State<FormWithIconRoute> {
  TextStyle textStyle = TextStyle(color: Colors.pink[800], height: 1.4, fontSize: 16);
  TextStyle labelStyle = TextStyle(color: Colors.pink[800]);
  UnderlineInputBorder lineStyle1 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[800]!, width: 1));
  UnderlineInputBorder lineStyle2 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[800]!, width: 2));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.pink[800],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.done),
              onPressed: () {},
            ),
          ]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 230, width: double.infinity,
              color: MyColors.grey_10,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Icon(Icons.person, size: 220, color: Colors.white),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0.0, 40.0, 0.0),
                    margin: EdgeInsets.all(15),
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(heroTag: "fab3",
                      backgroundColor: Colors.blueGrey[800], elevation: 3,
                      child: Icon(Icons.photo_camera, color: Colors.white),
                      onPressed: () { print('Clicked'); },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                    decoration: InputDecoration(
                      icon: Container(child: Icon(Icons.person, color: MyColors.grey_60), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      labelText: "Name", labelStyle: labelStyle,
                      enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                    ),
                  ),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: TextField(
                          style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                          decoration: InputDecoration(
                            icon: Container(child: Icon(Icons.phone, color: MyColors.grey_60), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                            labelText: "Phone Number", labelStyle: labelStyle,
                            enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                          ),
                        ),
                      ),
                      Container(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.arrow_drop_down, color: MyColors.grey_60),
                            labelText: "Phone Type", labelStyle: labelStyle,
                            enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: TextField(
                          style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                          decoration: InputDecoration(
                            icon: Container(child: Icon(Icons.email, color: MyColors.grey_60), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                            labelText: "Email", labelStyle: labelStyle,
                            enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                          ),
                        ),
                      ),
                      Container(width: 10),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.arrow_drop_down, color: MyColors.grey_60),
                            labelText: "Email Type", labelStyle: labelStyle,
                            enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(height: 10),
                  TextField(
                    style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                    decoration: InputDecoration(
                      icon: Container(child: Icon(Icons.location_on, color: MyColors.grey_60), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      labelText: "Address", labelStyle: labelStyle,
                      enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                    ),
                  ),
                  Container(height: 10),
                  TextField(
                    style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                    decoration: InputDecoration(
                      icon: Container(child: Icon(Icons.domain, color: MyColors.grey_60), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      labelText: "Company", labelStyle: labelStyle,
                      enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                    ),
                  ),
                  TextField(
                    style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                    decoration: InputDecoration(
                      icon: Container(child: Icon(Icons.domain, color: Colors.transparent), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      labelText: "Title", labelStyle: labelStyle,
                      enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                    ),
                  ),
                  Container(height: 10),
                  TextField(
                    style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[800],
                    decoration: InputDecoration(
                      icon: Container(child: Icon(Icons.public, color: MyColors.grey_60), margin: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                      labelText: "Website", labelStyle: labelStyle,
                      enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                    ),
                  ),
                  Container(height: 10),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}

