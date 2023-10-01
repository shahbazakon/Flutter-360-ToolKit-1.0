import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class NoitemInternetImageRoute extends StatefulWidget {

  NoitemInternetImageRoute();

  @override
  NoitemInternetImageRouteState createState() => new NoitemInternetImageRouteState();
}


class NoitemInternetImageRouteState extends State<NoitemInternetImageRoute> {

  bool finishLoading = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.white)),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center, width: 280,
          child: Stack(
            children: <Widget>[
              finishLoading ?
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(Img.get('img_no_internet_satellite.png'), width: 250, height: 250),
                  Text("Whoops!", style: MyText.display1(context)!.copyWith(
                      color: MyColors.primary, fontWeight: FontWeight.bold
                  )),
                  Container(height: 10),
                  Text("No internet connections found. Check your connection or try again",
                      textAlign: TextAlign.center, style: MyText.medium(context).copyWith(color: MyColors.primary)
                  ),
                  Container(height: 25),
                  Container(
                    width: 180, height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: MyColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      child: Text("RETRY", style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        setState(() {
                          finishLoading = false;
                        });
                        delayShowingContent();
                      },
                    ),
                  )
                ],
              ) : CircularProgressIndicator(),
            ],
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

