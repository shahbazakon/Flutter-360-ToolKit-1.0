import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormSignUpDarkRoute extends StatefulWidget {

  FormSignUpDarkRoute();

  @override
  FormSignUpDarkRouteState createState() => new FormSignUpDarkRouteState();
}


class FormSignUpDarkRouteState extends State<FormSignUpDarkRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_95,
      appBar: AppBar(
          backgroundColor: MyColors.grey_100_, systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 5),
                Container( height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    style: MyText.subhead(context)!.copyWith(color: Colors.white),
                    controller: new TextEditingController(text: "Roberts Turner"),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none
                    ),
                  ),
                ),
                Container(height: 20),

                Container( height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    style: MyText.subhead(context)!.copyWith(color: Colors.white),
                    controller: new TextEditingController(text: "roberts.turner"),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none
                    ),
                  ),
                ),
                Container(height: 20),

                Container( height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    style: MyText.subhead(context)!.copyWith(color: Colors.white),
                    controller: new TextEditingController(text: "password"),
                    obscureText: true, obscuringCharacter: "*",
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(-12), border: InputBorder.none
                    ),
                  ),
                ),
                Container(height: 20),

                Container( height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    style: MyText.subhead(context)!.copyWith(color: Colors.white),
                    controller: new TextEditingController(text: "roberts.turner@mail.com"),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none
                    ),
                  ),
                ),
                Container(height: 20),

                Row(
                  children: <Widget>[
                    Expanded(flex: 4,
                      child: Container( height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Container(width: 15),
                            Expanded(
                              child: TextField(maxLines: 1, keyboardType: TextInputType.text,
                                style: MyText.subhead(context)!.copyWith(color: Colors.white),
                                controller: new TextEditingController(text: "29 y.o"),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                    Container(width: 20),
                    Expanded(flex: 3,
                      child: Container( height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Container(width: 15),
                            Expanded(
                              child: TextField(maxLines: 1, keyboardType: TextInputType.text,
                                style: MyText.subhead(context)!.copyWith(color: Colors.white),
                                controller: new TextEditingController(text: "Male"),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, color: Colors.white)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 20),

                Container(height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(width: 15),
                      Expanded(
                        child: TextField(maxLines: 1, keyboardType: TextInputType.text,
                          style: MyText.subhead(context)!.copyWith(color: Colors.white),
                          controller: new TextEditingController(text: "United State"),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.white)
                    ],
                  ),
                ),
                Container(height: 20),

                Container(
                  width: double.infinity, height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.orange[600], elevation: 0),
                    child: Text("SUBMIT", style: MyText.body2(context)!.copyWith(color: Colors.white)),
                    onPressed: (){ },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

