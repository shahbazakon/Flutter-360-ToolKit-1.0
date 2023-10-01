import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormProfileDataRoute extends StatefulWidget {

  FormProfileDataRoute();

  @override
  FormProfileDataRouteState createState() => new FormProfileDataRouteState();
}


class FormProfileDataRouteState extends State<FormProfileDataRoute> {

  TextStyle textStyle = TextStyle(color: Colors.pink[300], height: 1.4, fontSize: 16);
  TextStyle labelStyle = TextStyle(color: Colors.pink[300]);
  UnderlineInputBorder lineStyle1 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[300]!, width: 1));
  UnderlineInputBorder lineStyle2 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[300]!, width: 2));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.pink[300],
          title: Text("Profile"),
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
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                  decoration: InputDecoration(
                    labelText: "Name", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 10),
                TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                  decoration: InputDecoration(
                    labelText: "Address", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 10),
                TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                  decoration: InputDecoration(
                    labelText: "City", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextField(
                        style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                        decoration: InputDecoration(
                          labelText: "State", labelStyle: labelStyle,
                          enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                          suffixIcon: Icon(Icons.arrow_drop_down)
                        ),
                      ),
                    ),
                    Container(width: 10),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                        decoration: InputDecoration(
                          labelText: "Zip code*", labelStyle: labelStyle,
                          enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 10),
                TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.pink[300],
                  decoration: InputDecoration(
                    labelText: "Phone number", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 25),
                Text("* Required field", style: MyText.body1(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

