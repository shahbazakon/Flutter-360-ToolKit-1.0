import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class FormSignUpCardStackRoute extends StatefulWidget {

  FormSignUpCardStackRoute();

  @override
  FormSignUpCardStackRouteState createState() => new FormSignUpCardStackRouteState();
}


class FormSignUpCardStackRouteState extends State<FormSignUpCardStackRoute> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
        backgroundColor: MyColors.grey_20, systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
),
        toolbarHeight: 0, elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(Img.get('image_14.jpg'),
              width: double.infinity, height: double.infinity,
              fit: BoxFit.cover
          ),
          Container(width: double.infinity, height: double.infinity, color: Colors.black.withOpacity(0.3)),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(height: 30),
                Container(
                  width: 80, height: 80,
                  child: RawMaterialButton(
                    shape: CircleBorder(), fillColor: Colors.white, elevation: 1,
                    child: Icon(Icons.camera_alt, color: MyColors.grey_40, size: 30),
                    onPressed: (){},
                  )
                ),

                Container(height: 25),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Container( height: 45,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(maxLines: 1,
                      controller: new TextEditingController(),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                        hintText: "Email", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                      ),
                    ),
                  ),
                ),

                Container(height: 15),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Container( height: 45,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(maxLines: 1,
                      controller: new TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                          hintText: "Username", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                      ),
                    ),
                  ),
                ),

                Container(height: 15),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Container( height: 45,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(maxLines: 1,
                      controller: new TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                          hintText: "Password", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                      ),
                    ),
                  ),
                ),

                Container(height: 15),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Container( height: 45,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(maxLines: 1,
                      controller: new TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(-12), border: InputBorder.none,
                          hintText: "Confirm Password", hintStyle: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                      ),
                    ),
                  ),
                ),

                Container(height: 15),
                Card(
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                  clipBehavior: Clip.antiAliasWithSaveLayer, elevation: 1, margin: EdgeInsets.all(0),
                  child: Container( height: 45,
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
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              width: double.infinity, height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange, elevation: 1),
                child: Text("CREATE ACCOUNT", style: MyText.body2(context)!.copyWith(color: Colors.white)),
                onPressed: (){ },
              ),
            ),
          )
        ],
      ),
    );
  }
}

