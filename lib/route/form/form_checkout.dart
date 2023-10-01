import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormCheckoutRoute extends StatefulWidget {

  FormCheckoutRoute();

  @override
  FormCheckoutRouteState createState() => new FormCheckoutRouteState();
}


class FormCheckoutRouteState extends State<FormCheckoutRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
), title: Text("Checkout"),
          titleSpacing: 0,
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
                Text("Full Name", style: TextStyle(color: MyColors.grey_40)),
                Container( height: 45,
                  child: TextField(maxLines: 1,
                    controller: new TextEditingController(text: "John Doe M.")
                  ),
                ),

                Container(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(flex: 3, child: Text("Card number", style: TextStyle(color: MyColors.grey_40)),),
                    Container(width: 15),
                    Expanded(flex: 2, child: Text("Security code", style: TextStyle(color: MyColors.grey_40)),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(flex: 3,
                      child: Container( height: 45,
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(text: "4522 **** **** ****"),
                        ),
                      ),
                    ),
                    Container(width: 15),
                    Expanded(flex: 2,
                      child: Container( height: 45,
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(text: "***"),
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 20),

                Text("Expiration date", style: TextStyle(color: MyColors.grey_40)),
                Container( height: 45,
                  child: TextField(maxLines: 1,
                      controller: new TextEditingController(text: "Aug 15, 2023")
                  ),
                ),
                Container(height: 20),

                Text("Address", style: TextStyle(color: MyColors.grey_40)),
                Container( height: 45,
                  child: TextField(maxLines: 1,
                      controller: new TextEditingController(text: "1170 Benson Lake Dr")
                  ),
                ),
                Container(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(flex: 3, child: Text("City", style: TextStyle(color: MyColors.grey_40)),),
                    Container(width: 15),
                    Expanded(flex: 2, child: Text("State", style: TextStyle(color: MyColors.grey_40)),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(flex: 3,
                      child: Container( height: 45,
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(text: "Grapeview"),
                        ),
                      ),
                    ),
                    Container(width: 15),
                    Expanded(flex: 2,
                      child: Container( height: 45,
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(text: "WA"),
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 20),  Row(
                  children: <Widget>[
                    Expanded(flex: 3, child: Text("Postal code", style: TextStyle(color: MyColors.grey_40)),),
                    Container(width: 15),
                    Expanded(flex: 2, child: Text("Country", style: TextStyle(color: MyColors.grey_40)),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(flex: 3,
                      child: Container( height: 45,
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(text: "98546"),
                        ),
                      ),
                    ),
                    Container(width: 15),
                    Expanded(flex: 2,
                      child: Container( height: 45,
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(text: "USA"),
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 20),

                Container(
                  width: double.infinity, height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: MyColors.primary, elevation: 0),
                    child: Text("PROCESS", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
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

