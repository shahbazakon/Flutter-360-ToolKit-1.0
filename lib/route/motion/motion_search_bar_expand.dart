import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class MotionSearchBarExpandRoute extends StatefulWidget {

  MotionSearchBarExpandRoute();

  @override
  MotionSearchBarExpandRouteState createState() => new MotionSearchBarExpandRouteState();
}

class MotionSearchBarExpandRouteState extends State<MotionSearchBarExpandRoute> {

  late BuildContext _scaffoldCtx;

  void onItemClick() {
    Navigator.push(_scaffoldCtx, PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 1000),
        pageBuilder: (_, __, ___) => MotionSearchBarExpandDetails())
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(milliseconds: 500), (){
        onItemClick();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        bottom: PreferredSize(
            child: Hero(tag: "searchBar",
              child: Card(
                margin: EdgeInsets.all(10), elevation: 3,
                child: InkWell(
                  splashColor: Colors.grey[600], highlightColor: Colors.grey[600],
                  onTap: (){
                    onItemClick();
                  },
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.grey[600], highlightColor: Colors.grey[600],
                        onTap: (){
                          onItemClick();
                        },
                        child: Padding(
                          padding: EdgeInsets.all(13),
                          child: Icon(Icons.search, size: 23.0, color: Colors.grey[500],),
                        ),
                      ),
                      Text("Search", style: TextStyle(color: Colors.grey[500], fontSize: 16.0)),
                      Spacer(),
                      InkWell(
                        splashColor: Colors.grey[600], highlightColor: Colors.grey[600],
                        onTap: (){ },
                        child: Padding(
                          padding: EdgeInsets.all(13),
                          child: Icon(Icons.mic, size: 23.0, color: Colors.grey[700],),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(20)
        ),
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
      ),
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          color: Colors.grey[200],
          alignment: Alignment.center,
          child: Text("Please click\nSearch Bar above", textAlign: TextAlign.center, style: MyText.headline(context)!.copyWith(
            color: MyColors.grey_40,
          )),
        );
      }),
    );
  }
}


class MotionSearchBarExpandDetails extends StatelessWidget {

  final TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Hero(tag: "searchBar",
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark
), toolbarHeight: 0,
          elevation: 0, backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.grey[600], highlightColor: Colors.grey[600],
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.arrow_back, size: 23.0, color: Colors.grey[500],),
                    ),
                  ),
                  Expanded(
                    child: TextField(maxLines: 1, controller: inputController,
                      style: TextStyle(color: Colors.grey[600], fontSize: 18), keyboardType: TextInputType.text,
                      decoration: InputDecoration(border: InputBorder.none,
                        hintText: 'Search', hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.grey[600], highlightColor: Colors.grey[600],
                    onTap: (){ },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.mic, size: 23.0, color: Colors.grey[700],),
                    ),
                  ),
                ],
              ),
              Divider(height: 0, thickness: 1, color: MyColors.grey_10),
              Container(height: 8),
              ListTile(
                leading: Icon(Icons.history, size: 23.0, color: Colors.grey[500]),
                minLeadingWidth: 0, dense: true,
                title: Text("Viral Video", style: TextStyle(color: Colors.grey[500], fontSize: 16.0)),
                onTap: (){
                  inputController.text = "Viral Video";
                },
              ),
              ListTile(
                leading: Icon(Icons.history, size: 23.0, color: Colors.grey[500]),
                minLeadingWidth: 0, dense: true,
                title: Text("Trending", style: TextStyle(color: Colors.grey[500], fontSize: 16.0)),
                onTap: (){
                  inputController.text = "Trending";
                },
              ),
              ListTile(
                leading: Icon(Icons.history, size: 23.0, color: Colors.grey[500]),
                minLeadingWidth: 0, dense: true,
                title: Text("Hot News", style: TextStyle(color: Colors.grey[500], fontSize: 16.0)),
                onTap: (){
                  inputController.text = "Hot News";
                },
              ),

            ],
          ),
        ),
      )
    );
  }
}

