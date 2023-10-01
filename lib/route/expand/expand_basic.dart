import 'dart:math' as math;


import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ExpandBasicRoute extends StatefulWidget {

  ExpandBasicRoute();

  @override
  ExpandBasicRouteState createState() => new ExpandBasicRouteState();
}

class ExpandBasicRouteState extends State<ExpandBasicRoute> with TickerProviderStateMixin {

  bool expand1 = false;
  bool expand2 = false;
  late AnimationController controller1, controller2;
  late Animation<double> animation1, animation1View;
  late Animation<double> animation2, animation2View;
  String? gender;

  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);
    controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);

    animation1 = Tween(begin: 0.0, end: 180.0).animate(controller1);
    animation1View = CurvedAnimation(parent: controller1, curve: Curves.linear);

    animation2 = Tween(begin: 0.0, end: 180.0).animate(controller2);
    animation2View = CurvedAnimation(parent: controller2, curve: Curves.linear);

    controller1.addListener(() { setState(() {}); });
    controller2.addListener(() { setState(() {}); });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Column(
            children: <Widget>[
              buildPanel1(),
              buildPanel2(),
            ]
        )
      )
    );
  }

  Widget buildPanel1(){
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height : 50,
            child: Row(
              children: <Widget>[
                Container(width: 15, height: 0),
                Text("Text", style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800]
                ),),
                Spacer(flex: 1),
                Transform.rotate(
                  angle: animation1.value * math.pi / 180,
                  child: IconButton(
                    icon: Icon(Icons.expand_more),
                    onPressed: (){togglePanel1();},
                  ),
                ),
                Container(width: 5, height: 0),
              ],
            ),
          ),
          SizeTransition(
            sizeFactor: animation1View,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    MyStrings.lorem_ipsum,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Divider(height: 0, thickness: 0.5),
                Container(
                  alignment: Alignment.centerLeft,
                  height : 50,
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.transparent,
                            padding: EdgeInsets.all(0)
                        ),
                        child: Text("HIDE", style: TextStyle(color: Colors.grey[800]),),
                        onPressed: (){togglePanel1();},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPanel2(){
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height : 50,
            child: Row(
              children: <Widget>[
                Container(width: 15, height: 0),
                Text("Input", style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800]
                ),),
                Spacer(flex: 1),
                Transform.rotate(
                  angle: animation2.value * math.pi / 180,
                  child: IconButton(
                    icon: Icon(Icons.expand_more),
                    onPressed: (){togglePanel2();},
                  ),
                ),
                Container(width: 5, height: 0),
              ],
            ),
          ),
          SizeTransition(
            sizeFactor: animation2View,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        decoration: new BoxDecoration(shape: BoxShape.rectangle, color: Colors.grey[200]),
                        child: TextField(
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                            hintText: "Name", hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(width: 10),
                    Radio(
                      value: "MALE",
                      groupValue: gender,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (String? value) {
                        setState(() { gender = value;});
                      },
                    ),
                    Text("Male")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(width: 10),
                    Radio(
                      value: "FEMALE",
                      groupValue: gender,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (String? value) {
                        setState(() { gender = value; });
                      },
                    ),
                    Text("Female")
                  ],
                ),
                Divider(height: 0, thickness: 0.5),
                Container(
                  alignment: Alignment.centerLeft,
                  height : 50,
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.transparent, padding: EdgeInsets.all(0)),
                        child: Text("HIDE", style: TextStyle(color: Colors.grey[800]),),
                        onPressed: (){togglePanel2();},
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.transparent, padding: EdgeInsets.all(0)),
                        child: Text("SAVE", style: TextStyle(color: MyColors.accent)),
                        onPressed: (){togglePanel2();},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void togglePanel1(){
    if(!expand1){
      controller1.forward();
    } else {
      controller1.reverse();
    }
    expand1 = !expand1;
  }

  void togglePanel2(){
    if(!expand2){
      controller2.forward();
    } else {
      controller2.reverse();
    }
    expand2 = !expand2;
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
}
