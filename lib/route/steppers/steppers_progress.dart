import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SteppersProgressRoute extends StatefulWidget {

  SteppersProgressRoute();

  @override
  SteppersProgressRouteState createState() => new SteppersProgressRouteState();
}


class SteppersProgressRouteState extends State<SteppersProgressRoute> {

  int step = 1;
  static const int MAX = 20;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        title: Text("Progress"),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1,
              child: Align(
                child: Text("Step $step of 20", style: MyText.display1(context)!.copyWith(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold
                )),
              )
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          if(step > 1) step--;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.chevron_left),
                          Text("BACK", style: MyText.medium(context).copyWith(color: Colors.grey[600]))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: buildProgress(context),
                )),
                Container(
                  height: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          if(step <MAX) step++;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Text("NEXT", style: MyText.medium(context).copyWith(color: Colors.grey[600])),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildProgress(BuildContext context){
    double progress = step * (1 / MAX);
    Widget widget = Container(
      height: 4,
      width: 130,
      child: LinearProgressIndicator(
        value: progress,
        valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
        backgroundColor: Colors.grey[300],
      ),
    );
    return widget;
  }
}

