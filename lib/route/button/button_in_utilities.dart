
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/progress.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonInUtilitiesRoute extends StatefulWidget {

  ButtonInUtilitiesRoute();

  @override
  ButtonInUtilitiesRouteState createState() => new ButtonInUtilitiesRouteState();
}


class ButtonInUtilitiesRouteState extends State<ButtonInUtilitiesRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommonAppBar.getPrimaryBackAppbar(context, "Button In Utilities") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.contacts, color: MyColors.primary, size: 24,),
                        Container(width: 25,),
                        Text("Morning Pizza", style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(width: 75,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text("FORCE STOP", style: TextStyle(color: Colors.black)),
                        onPressed: (){},
                      ),
                      Container(width: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.pink[300]),
                        child: Text("UNINSTALL", style: TextStyle(color: Colors.white),),
                        onPressed: (){},
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(height: 15,),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.storage, color: Colors.grey[500], size: 24,),
                      Container(width: 25,),
                      Text("Storage", style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400,
                          color: Colors.grey[600]
                      )),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(width: 75,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Total", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500,
                                color: Colors.grey[900]
                            )),
                            Container(height: 8,),
                            Text("11,64 MB", style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w400,
                                color: Colors.grey[900]
                            )),
                            Container(height: 8,),
                            ProgressStatic.getFlatProgressAccent(70, 20),
                            Container(height: 8,),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("App", style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.w500,
                                          color: Colors.grey[900]
                                      )),
                                      Container(height: 5,),
                                      Text("9.40 MB", style: TextStyle(
                                          fontSize: 16, color: Colors.grey[400]
                                      )),
                                    ],
                                  ),
                                  flex: 70,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Data", style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.w500,
                                          color: Colors.grey[900]
                                      )),
                                      Container(height: 5,),
                                      Text("2.18 MB", style: TextStyle(
                                          fontSize: 16, color: Colors.grey[400]
                                      )),
                                    ],
                                  ),
                                  flex: 30,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(width: 15,),
                  ],
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.data_usage, color: Colors.grey[500], size: 24,),
                      Container(width: 25,),
                      Text("Data usage", style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400,
                          color: Colors.grey[600]
                      )),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(width: 75,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Total", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500,
                                color: Colors.grey[900]
                            )),
                            Container(height: 8,),
                            Text("3,58 MB", style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w400,
                                color: Colors.grey[900]
                            )),
                            Container(height: 8,),
                          ],
                        ),
                      ),
                    ),
                    Container(width: 15,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

