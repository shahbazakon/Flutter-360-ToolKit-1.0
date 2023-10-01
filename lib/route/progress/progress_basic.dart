import 'dart:async';

import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ProgressBasicRoute extends StatefulWidget {

  ProgressBasicRoute();

  @override
  ProgressBasicRouteState createState() => new ProgressBasicRouteState();
}


class ProgressBasicRouteState extends State<ProgressBasicRoute> {

  double progressValue = 0.0;
  double progressValue2 = 0.0;

  @override
  void initState() {
    super.initState();
    updateProgress();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic") as PreferredSizeWidget?,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Determine Primary", style: MyText.subhead(context)!.copyWith(
                color: Colors.grey[800]
            )),
            Container(height: 5),
            Container(
              height: 5,
              child: LinearProgressIndicator(
                value: progressValue,
                valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
                backgroundColor: Colors.grey[300],
              ),
            ),
            Container(height: 20),
            Text("Indetermine Primary", style: MyText.subhead(context)!.copyWith(
                color: Colors.grey[800]
            )),
            Container(height: 5),
            Container(
              height: 5,
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
                backgroundColor: Colors.grey[300],
              ),
            ),
            Container(height: 20),
            Text("Determine", style: MyText.subhead(context)!.copyWith(
                color: Colors.grey[800]
            )),
            Container(height: 5),
            Container(
              height: 5,
              child: LinearProgressIndicator(
                value: progressValue2,
                backgroundColor: Colors.grey[300],
              ),
            ),
            Container(height: 20),
            Text("Indetermine", style: MyText.subhead(context)!.copyWith(
                color: Colors.grey[800]
            )),
            Container(height: 5),
            Container(
              height: 5,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[300],
              ),
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Determine", style: MyText.subhead(context)!.copyWith(
                        color: Colors.grey[800]
                    )),
                    Container(height: 20),
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
                      backgroundColor: Colors.grey[300],
                      value: progressValue2,
                    ),
                  ],
                ),
                Container(width: 20),
                Column(
                  children: <Widget>[
                    Text("Indetermine", style: MyText.subhead(context)!.copyWith(
                        color: Colors.grey[800]
                    )),
                    Container(height: 20),
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
                    ),
                  ],
                ),
              ],
            ),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Determine", style: MyText.subhead(context)!.copyWith(
                        color: Colors.grey[800]
                    )),
                    Container(height: 20),
                    CircularProgressIndicator(
                      backgroundColor: Colors.grey[300],
                      value: progressValue,
                    ),
                  ],
                ),
                Container(width: 20),
                Column(
                  children: <Widget>[
                    Text("Indetermine", style: MyText.subhead(context)!.copyWith(
                        color: Colors.grey[800]
                    )),
                    Container(height: 20),
                    CircularProgressIndicator(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void updateProgress() {
    new Timer.periodic(Duration(milliseconds: 500), (Timer t) {
      setState(() {
        progressValue += 0.2;
        // we "finish" downloading here
        if (progressValue > 1.0) {
          progressValue = 0.0;
        }
      });
    });

    new Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        progressValue2 += 0.1;
        // we "finish" downloading here
        if (progressValue2 > 1.0) {
          progressValue2 = 0.0;
        }
      });
    });
  }
}

