import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class AboutAppSimpleBlueRoute extends StatefulWidget {

  AboutAppSimpleBlueRoute();

  @override
  AboutAppSimpleBlueRouteState createState() => new AboutAppSimpleBlueRouteState();
}


class AboutAppSimpleBlueRouteState extends State<AboutAppSimpleBlueRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.primary,
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          title: Text("About", style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            )
          ]
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("MaterialX App", style: MyText.display1(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.w300)),
            Container(height: 5),
            Container(width: 120, height: 3, color: Colors.white),
            Container(height: 15),
            Text("Version", style: MyText.body1(context)!.copyWith(color: MyColors.grey_20)),
            Text("3.24.0.11.1", style: MyText.medium(context).copyWith(color: Colors.white)),
            Container(height: 15),
            Text("Last Update", style: MyText.body1(context)!.copyWith(color: MyColors.grey_20)),
            Text("February 2018", style: MyText.medium(context).copyWith(color: Colors.white)),
            Container(height: 25),
            Text(MyStrings.medium_lorem_ipsum, style: MyText.medium(context).copyWith(color: Colors.white)),
            Container(height: 25),
            Text("Term of services", style: MyText.medium(context).copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

