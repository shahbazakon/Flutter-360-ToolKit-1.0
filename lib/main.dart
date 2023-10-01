import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/img.dart';
import 'data/my_colors.dart';
import 'data/sqlite_db.dart';
import 'route/about/about_app.dart';
import 'route/menu_route.dart';
import 'widget/my_text.dart';
import 'utils/fcm.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Fcm.onBackgroundMessage();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: MyColors.primary,
      primaryColorDark: MyColors.primaryDark,
      primaryColorLight: MyColors.primaryLight,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent)
    ),
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/MenuRoute': (BuildContext context) => new MenuRoute(),
      '/About': (BuildContext context) => new AboutAppRoute(),
    }
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MenuRoute');
  }

  @override
  void initState() {
    super.initState();
    SQLiteDb dbHelper = SQLiteDb();
    dbHelper.init();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          child: Container(
            width: 105,
            height: 150,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 60, height: 60,
                  child:
                  Image.asset(Img.get('logo_small_round.png'), color: Colors.grey[800], fit: BoxFit.cover),
                ),
                Container(height: 10),
                Text("MaterialX", style: MyText.headline(context)!.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.w600
                )),
                Text("Flutter Version", style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[500]
                )),
                Container(height: 20),
                Container( height: 5, width: 80,
                  child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(MyColors.primaryLight),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
          alignment: Alignment.center,
        ),
      );
  }
}
