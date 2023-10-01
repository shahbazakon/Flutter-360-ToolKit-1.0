import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormSignUpCardRoute extends StatefulWidget {

  FormSignUpCardRoute();

  @override
  FormSignUpCardRouteState createState() => new FormSignUpCardRouteState();
}


class FormSignUpCardRouteState extends State<FormSignUpCardRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
          backgroundColor: Colors.deepPurple[700], systemOverlayStyle: SystemUiOverlayStyle(
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
              icon: Icon(Icons.notifications_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 5),
                Row(
                  children: [
                    Container(
                      width: 10, height: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red[400]),
                    ),
                    Container(width: 15),
                    Text("Account Information", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80))
                  ],
                ),
                Container(height: 20),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Container( height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Email", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                      Divider(height: 0),
                      Container( height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Username", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                      Divider(height: 0),
                      Container( height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Password", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(height: 25),
                Row(
                  children: [
                    Container(
                      width: 10, height: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red[400]),
                    ),
                    Container(width: 15),
                    Text("Profile Information", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80))
                  ],
                ),
                Container(height: 20),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Container( height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(maxLines: 1,
                          controller: new TextEditingController(),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                              hintText: "Full Name", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                          ),
                        ),
                      ),
                      Divider(height: 0),
                      Container( height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: <Widget>[
                            Container(width: 15),
                            Expanded(
                              child: TextField(maxLines: 1, controller: new TextEditingController(),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                                  hintText: "Age", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, color: MyColors.grey_40)
                          ],
                        ),
                      ),
                      Divider(height: 0),
                      Container( height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: <Widget>[
                            Container(width: 15),
                            Expanded(
                              child: TextField(maxLines: 1, controller: new TextEditingController(),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                                  hintText: "Gender", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, color: MyColors.grey_40)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                    Text("Sign In", style: MyText.subhead(context)!.copyWith(color: Colors.deepPurple, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab2", backgroundColor: Colors.deepPurple[700],
        elevation: 3, child: Icon(Icons.done, color: Colors.white,),
        onPressed: () { print('Clicked'); },
      ),
    );
  }
}

