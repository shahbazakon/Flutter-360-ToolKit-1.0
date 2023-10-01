import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormEcommerceRoute extends StatefulWidget {

  FormEcommerceRoute();

  @override
  FormEcommerceRouteState createState() => new FormEcommerceRouteState();
}


class FormEcommerceRouteState extends State<FormEcommerceRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          backgroundColor: Colors.lightGreen[600], systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
),
          title: Text("Ecommerce"),
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
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
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 5),
                Container( height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    controller: new TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                        hintText: "Full Name", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  ),
                ),

                Container(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(flex: 3,
                      child: Container( height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Card Number", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                    ),
                    Container(width: 15),
                    Expanded(flex: 2,
                      child: Container( height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "CVV", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 15),

                Container(height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(width: 15),
                      Expanded(
                        child: TextField(maxLines: 1, keyboardType: TextInputType.text,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Expiration Date", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                      Icon(Icons.expand_more, color: MyColors.grey_40)
                    ],
                  ),
                ),
                Container(height: 15),

                Container( height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    controller: new TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                        hintText: "Address Line 1", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  ),
                ),
                Container(height: 15),

                Container( height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    controller: new TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                        hintText: "Address Line 2", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  ),
                ),
                Container(height: 15),

                Container( height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(maxLines: 1,
                    controller: new TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                        hintText: "City", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  ),
                ),
                Container(height: 15),

                Container(height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(width: 15),
                      Expanded(
                        child: TextField(maxLines: 1, keyboardType: TextInputType.text,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "State", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                      Icon(Icons.expand_more, color: MyColors.grey_40)
                    ],
                  ),
                ),
                Container(height: 15),

                Row(
                  children: <Widget>[
                    Expanded(flex: 3,
                      child: Container( height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Country", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                    ),
                    Container(width: 15),
                    Expanded(flex: 2,
                      child: Container( height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Zip Code", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 15),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: TextField(maxLines: 4, minLines: 3, keyboardType: TextInputType.multiline,
                    controller: new TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                        hintText: "Comment", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  )
                ),
                Container(height: 15),

                Container(
                  width: double.infinity, height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.lightGreen, elevation: 0),
                    child: Text("SUBMIT", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
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

