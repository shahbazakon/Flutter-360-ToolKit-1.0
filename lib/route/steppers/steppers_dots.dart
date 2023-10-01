import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SteppersDotsRoute extends StatefulWidget {

  SteppersDotsRoute();

  @override
  SteppersDotsRouteState createState() => new SteppersDotsRouteState();
}


class SteppersDotsRouteState extends State<SteppersDotsRoute> {

  int step = 1;
  static const int MAX = 6;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        title: Text("Dots"),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints.expand(height: 45),
              child: Text("Step $step of 6", style: MyText.title(context)!.copyWith(color: Colors.grey[700])),
            ),
            preferredSize: Size.fromHeight(45)
        ),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1,
              child: Align(
                child: Text("Step $step of 6", style: MyText.display1(context)!.copyWith(
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
                  child: buildDots(context),
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

  Widget buildDots(BuildContext context){
    Widget widget;

    List<Widget> dots = [];
    for(int i=0; i<MAX; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: step-1 == i ? Colors.blue : Colors.grey[400],
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }
}

