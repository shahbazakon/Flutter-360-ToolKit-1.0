import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SteppersTextRoute extends StatefulWidget {

  SteppersTextRoute();

  @override
  SteppersTextRouteState createState() => new SteppersTextRouteState();
}


class SteppersTextRouteState extends State<SteppersTextRoute> {

  int step = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
          title: Text("Text"),
          bottom: PreferredSize(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                alignment: Alignment.centerLeft,
                constraints: BoxConstraints.expand(height: 45),
                child: Text("Step $step of 5", style: MyText.title(context)!.copyWith(color: Colors.grey[700])),
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
                child: Text("Step $step of 5", style: MyText.display1(context)!.copyWith(
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
                Expanded(child: Container()),
                Container(
                  height: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          if(step <=4) step++;
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
}

