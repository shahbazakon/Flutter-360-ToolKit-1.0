import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormSignUpImageCardRoute extends StatefulWidget {

  FormSignUpImageCardRoute();

  @override
  FormSignUpImageCardRouteState createState() => new FormSignUpImageCardRouteState();
}


class FormSignUpImageCardRouteState extends State<FormSignUpImageCardRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
        backgroundColor: MyColors.grey_40, systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
),
        toolbarHeight: 0, elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(Img.get('image_4.jpg'),
              width: double.infinity, height: double.infinity,
              fit: BoxFit.cover
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            scrollDirection: Axis.vertical,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(height: 25),
                    Container(
                        width: 90, height: 90,
                        child: RawMaterialButton(
                          shape: CircleBorder(), fillColor: Colors.white, elevation: 1,
                          child: Icon(Icons.camera_alt, color: MyColors.grey_20, size: 30),
                          onPressed: (){},
                        )
                    ),
                    Container(height: 25),
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
                                  hintText: "Email", hintStyle: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
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
                                  hintText: "Username", hintStyle: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
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
                                  hintText: "Password", hintStyle: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(height: 25),
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
                                  hintText: "Full Name", hintStyle: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
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
                                  hintText: "Location", hintStyle: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
                              ),
                            ),
                          ),

                          Material(
                            color: Colors.deepOrange[500],
                            child: InkWell(
                              highlightColor: Colors.black.withOpacity(0.2),
                              splashColor: Colors.black.withOpacity(0.2),
                              onTap: () { },
                              child: Container( height: 50, alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                child: Text("CREATE ACCOUNT", style: MyText.body2(context)!.copyWith(color: Colors.white)),
                              )
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_20)),
                        Text("Sign In", style: MyText.subhead(context)!.copyWith(color: Colors.green[300], fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

