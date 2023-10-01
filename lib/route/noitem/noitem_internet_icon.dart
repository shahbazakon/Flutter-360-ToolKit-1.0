import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class NoitemInternetIconRoute extends StatefulWidget {

  NoitemInternetIconRoute();

  @override
  NoitemInternetIconRouteState createState() => new NoitemInternetIconRouteState();
}


class NoitemInternetIconRouteState extends State<NoitemInternetIconRoute> {

  bool finishLoading = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Search") as PreferredSizeWidget?,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          width: 200,
          child: InkWell(
            onTap: (){
              setState(() {
                finishLoading = false;
              });
              delayShowingContent();
            },
            child: Stack(
              children: <Widget>[
                finishLoading ?
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.signal_wifi_off, size: 100, color: Colors.grey[300]),
                    Container(height: 10),
                    Text("No connection", style: MyText.title(context)!.copyWith(
                        color: MyColors.grey_90, fontWeight: FontWeight.bold
                    )),
                    Container(height: 5),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.refresh, color: MyColors.grey_90, size: 15),
                        Container(width: 5),
                        Text("Tap to retry", style: MyText.subhead(context)!.copyWith(
                            color: MyColors.grey_90
                        ))
                      ],
                    ),
                  ],
                ) : CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void delayShowingContent(){
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        finishLoading = true;
      });
    });
  }


}

