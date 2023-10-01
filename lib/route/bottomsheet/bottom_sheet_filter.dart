import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class BottomSheetFilterRoute extends StatefulWidget {
  BottomSheetFilterRoute();

  @override
  BottomSheetFilterRouteState createState() => new BottomSheetFilterRouteState();
}

class BottomSheetFilterRouteState extends State<BottomSheetFilterRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Filter") as PreferredSizeWidget?,
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
      TextStyle(color: Colors.white, height: 1.4, fontSize: 16);
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Property Type",
                          style: TextStyle(
                            color: Colors.grey[700],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Container(
                        width: double.infinity,
                        height: 40,
                        decoration: myBoxDecoration(),
                        child: Stack(
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: new Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Appartement & Unit",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ))),
                            ),
                            new Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: new Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.expand_more,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          new Flexible(
                            child:  Column(
                              children: <Widget>[
                                new Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Min Price",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        )),
                                  ),
                                ),
                                new Container(
                                    width:  double.infinity,
                                    height: 40,
                                    decoration: myBoxDecoration(),
                                    child: Stack(
                                      children: <Widget>[
                                        new Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: new Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(new String.fromCharCodes(new Runes('\u0024'))+"50,000",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ))),
                                        ),
                                        new Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: new Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.expand_more,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            flex: 1,),
                          Container(width: 40,),
                          new Flexible(
                            child:  Column(
                              children: <Widget>[
                                new Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Max Price",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        )),
                                  ),
                                ),
                                new Container(
                                    width:  double.infinity,
                                    height: 40,
                                    decoration: myBoxDecoration(),
                                    child: Stack(
                                      children: <Widget>[
                                        new Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: new Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(new String.fromCharCodes(new Runes('\u0024'))+"50,000",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ))),
                                        ),
                                        new Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: new Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.expand_more,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            flex: 1,),

                        ],
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          new Flexible(
                            child:  Column(
                              children: <Widget>[
                                new Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Min Bedrooms",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        )),
                                  ),
                                ),
                                new Container(
                                    width:  double.infinity,
                                    height: 40,
                                    decoration: myBoxDecoration(),
                                    child: Stack(
                                      children: <Widget>[
                                        new Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: new Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("2",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ))),
                                        ),
                                        new Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: new Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.expand_more,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            flex: 1,),
                          Container(width: 40,),
                          new Flexible(
                            child:  Column(
                              children: <Widget>[
                                new Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Max Bedrooms",
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        )),
                                  ),
                                ),
                                new Container(
                                    width:  double.infinity,
                                    height: 40,
                                    decoration: myBoxDecoration(),
                                    child: Stack(
                                      children: <Widget>[
                                        new Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: new Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("6",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ))),
                                        ),
                                        new Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: new Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.expand_more,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            flex: 1,),

                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top:10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Min Land Size ( m\u00B2 )",
                          style: TextStyle(
                            color: Colors.grey[700],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Container(
                        width: double.infinity,
                        height: 40,
                        decoration: myBoxDecoration(),
                        child: Stack(
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: new Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("400",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ))),
                            ),
                            new Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: new Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.expand_more,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child:  SizedBox(
                        width: double.infinity, // match_parent
                        child:  ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.black,),
                          child: Text("SEARCH", style: TextStyle(color: Colors.white),),
                          onPressed: (){},
                        ),
                      )
                  ),
                  Container(height: 10,)
                ],
              ),
            ),
          ),
        );
      });
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
        width: 1, //
        color: Colors.grey[400]! //                  <--- border width here
        ),
  );
}
