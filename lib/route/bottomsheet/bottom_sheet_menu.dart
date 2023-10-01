import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class BottomSheetMenuRoute extends StatefulWidget {
  BottomSheetMenuRoute();

  @override
  BottomSheetMenuRouteState createState() => new BottomSheetMenuRouteState();
}

class BottomSheetMenuRouteState extends State<BottomSheetMenuRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Menu") as PreferredSizeWidget?,
      body: Center(
        child: Text("Press button \nbelow",
            textAlign: TextAlign.center,
            style: MyText.display1(context)!.copyWith(color: Colors.grey[300])),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
        backgroundColor: Colors.pink[500],
        elevation: 3,
        child: Icon(
          Icons.arrow_upward,
          color: Colors.white,
        ),
        onPressed: () {
          showSheet(context);
        },
      ),
    );
  }
}

void showSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Container(
                height: 20,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.search,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("Search",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.notifications,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("Notification",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.move_to_inbox,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("Download",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.favorite_border,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("Favorite",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                ],
              ),
              new Container(
                height: 20,
              ),
              new Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 18,),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.tab,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("All Tags",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                  Container(width: 40,),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.dns,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("Category",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                ],
              ),
              new Container(
                height: 10,
              ),
              new Divider(indent: 18, endIndent: 18, color: Colors.grey),
              new Container(
                height: 10,
              ),
              new Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 18,),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.settings,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("Settings",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                  Container(width: 33,),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.widgets,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("More Apps",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),
                  Container(width: 45,),
                  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.error_outline,
                            color: Colors.pinkAccent,
                          ),
                          new Container(
                            height: 10,
                          ),
                          new Text("About",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ))
                        ],
                      )),

                ],
              ),
              new Container(height: 20,),
            ],
          ),
        );
      });
}
