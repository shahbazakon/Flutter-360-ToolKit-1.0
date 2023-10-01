import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DashboardWalletGreenRoute extends StatefulWidget {

  DashboardWalletGreenRoute();

  @override
  DashboardWalletGreenRouteState createState() => new DashboardWalletGreenRouteState();
}


class DashboardWalletGreenRouteState extends State<DashboardWalletGreenRoute> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green[400],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
                elevation: 0, backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () { Navigator.pop(context);},
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.refresh, color: Colors.white),
                    onPressed: () {},
                  ),
                ]
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6)),
                    color: Colors.white, elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(width: 10),
                            Expanded(
                              child: Text("MaterialX Wallet", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                            ),
                            IconButton(icon: Icon(Icons.add, color: MyColors.grey_40), onPressed: () {}),
                          ],
                        ),
                        Container(height: 10),
                        Text("ETH Balance", style: MyText.subhead(context)!.copyWith(color: Colors.green[300])),
                        Text("24.561", style: MyText.display1(context)!.copyWith(color: Colors.black)),
                        Text("3734.89 USD", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                        Container(height: 25),
                      ],
                    ),
                  ),
                  Container(height: 5),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: MyColors.grey_10, child: Icon(Icons.arrow_upward, color: MyColors.grey_40, size: 15),
                                ),
                                Container(width: 15),
                                Text("Send", style: MyText.subhead(context)!.copyWith(color: Colors.green[900], fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(width: 5),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: MyColors.grey_10, child: Icon(Icons.arrow_downward, color: MyColors.grey_40, size: 15),
                                ),
                                Container(width: 15),
                                Text("Receive", style: MyText.subhead(context)!.copyWith(color: Colors.green[900], fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 10),
                  Text("Today", style: MyText.body2(context)!.copyWith(color: MyColors.grey_40)),
                  Container(height: 5),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: MyColors.grey_10, child: Icon(Icons.arrow_downward, color: MyColors.grey_40, size: 15),
                          ),
                          Container(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Receive", style: MyText.subhead(context)!.copyWith(color: Colors.green[900], fontWeight: FontWeight.w500)),
                              Container(height: 5),
                              Text("10 jan 2018 11:20", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("1.639 ETH", style: MyText.body1(context)!.copyWith(color: Colors.green[500])),
                              Container(height: 5),
                              Text("4.38 USD", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: MyColors.grey_10, child: Icon(Icons.arrow_downward, color: MyColors.grey_40, size: 15),
                          ),
                          Container(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Receive", style: MyText.subhead(context)!.copyWith(color: Colors.green[900], fontWeight: FontWeight.w500)),
                              Container(height: 5),
                              Text("10 jan 2018 08:55", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("1.947 ETH", style: MyText.body1(context)!.copyWith(color: Colors.green[500])),
                              Container(height: 5),
                              Text("5.204 USD", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: MyColors.grey_10, child: Icon(Icons.arrow_upward, color: MyColors.grey_40, size: 15),
                          ),
                          Container(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Sent", style: MyText.subhead(context)!.copyWith(color: Colors.green[900], fontWeight: FontWeight.w500)),
                              Container(height: 5),
                              Text("10 jan 2018 08:55", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("2.165 ETH", style: MyText.body1(context)!.copyWith(color: Colors.green[500])),
                              Container(height: 5),
                              Text("8.42 USD", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    color: Colors.white, elevation: 2, clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: MyColors.grey_10, child: Icon(Icons.arrow_upward, color: MyColors.grey_40, size: 15),
                          ),
                          Container(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Sent", style: MyText.subhead(context)!.copyWith(color: Colors.green[900], fontWeight: FontWeight.w500)),
                              Container(height: 5),
                              Text("10 jan 2018 07:20", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("2.035 ETH", style: MyText.body1(context)!.copyWith(color: Colors.green[500])),
                              Container(height: 5),
                              Text("8.12 USD", style: MyText.caption(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(height: 20)
                ],
              ),
            )
            ,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[400], unselectedItemColor: MyColors.grey_40,
        currentIndex: currentIndex,
        showSelectedLabels: false, showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(backgroundColor: Colors.white, icon: Icon(Icons.equalizer), label: ''),
          BottomNavigationBarItem(backgroundColor: Colors.white, icon: Icon(Icons.credit_card), label: ''),
          BottomNavigationBarItem(backgroundColor: Colors.white, icon: Icon(Icons.pie_chart_outline), label: ''),
          BottomNavigationBarItem(backgroundColor: Colors.white, icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

