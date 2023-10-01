import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormTextAreaRoute extends StatefulWidget {

  FormTextAreaRoute();

  @override
  FormTextAreaRouteState createState() => new FormTextAreaRouteState();
}


class FormTextAreaRouteState extends State<FormTextAreaRoute> {

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(color: Colors.white, height: 1.4, fontSize: 16);
    TextStyle labelStyle = TextStyle(color: Colors.white);
    UnderlineInputBorder lineStyle1 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1));
    UnderlineInputBorder lineStyle2 = UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber[500]!, width: 2));

    return Scaffold(
      backgroundColor: MyColors.grey_90,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.amber[500],
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
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.amber[500],
                  decoration: InputDecoration(
                    labelText: "Name", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 20),
                TextField(
                  style: textStyle, keyboardType: TextInputType.multiline, cursorColor: Colors.amber[500],
                  maxLines: 12, minLines: 7,
                  decoration: InputDecoration(
                    hintText: 'Message',
                    hintStyle: MyText.body1(context)!.copyWith(
                      color: Colors.white
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.amber[500]!, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                ),
                Container(height: 10),
                TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.amber[500],
                  decoration: InputDecoration(
                    labelText: "Phone number", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 10),
                TextField(
                  style: textStyle, keyboardType: TextInputType.text, cursorColor: Colors.amber[500],
                  decoration: InputDecoration(
                    labelText: "Email address", labelStyle: labelStyle,
                    enabledBorder: lineStyle1, focusedBorder: lineStyle2,
                  ),
                ),
                Container(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

