import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SettingSectionedRoute extends StatefulWidget {

  SettingSectionedRoute();

  @override
  SettingSectionedRouteState createState() => new SettingSectionedRouteState();
}


class SettingSectionedRouteState extends State<SettingSectionedRoute> {

  @override
  Widget build(BuildContext context) {
    bool isSwitched1 = true, isSwitched2 = false;
    bool isSwitched3 = false, isSwitched4 = true;

    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Device Setting") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("GENERAL SETTING", style: MyText.body1(context)!.copyWith(color: Colors.grey[500])),
              margin: EdgeInsets.fromLTRB(15, 18, 15, 0),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              elevation: 2,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 10),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.person, size: 25.0, color: Colors.grey[500]),
                            Container(width: 10),
                            Text("Account", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.email, size: 25.0, color: Colors.red[400]),
                            Container(width: 10),
                            Text("Gmail", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.sync, size: 25.0, color: Colors.blue[300]),
                            Container(width: 10),
                            Text("Sync Data", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              child: Text("NETWORK", style: MyText.body1(context)!.copyWith(color: Colors.grey[500])),
              margin: EdgeInsets.fromLTRB(15, 18, 15, 0),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              elevation: 2,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 10),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.sim_card, size: 25.0, color: Colors.grey[500]),
                            Container(width: 10),
                            Text("Simcard & Network", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.wifi, size: 25.0, color: Colors.yellow[800]),
                            Container(width: 10),
                            Text("Wifi", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Switch(
                              value: isSwitched1,
                              onChanged: (value) {
                                setState(() { isSwitched1 = value; });
                              },
                              activeColor: MyColors.primary,
                              inactiveThumbColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.bluetooth, size: 25.0, color: Colors.blue[500]),
                            Container(width: 10),
                            Text("Bluetooth", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Switch(
                              value: isSwitched2,
                              onChanged: (value) {
                                setState(() { isSwitched2 = value; });
                              },
                              activeColor: MyColors.primary,
                              inactiveThumbColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.more_horiz, size: 25.0, color: Colors.grey[500]),
                            Container(width: 10),
                            Text("More", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              child: Text("SOUND", style: MyText.body1(context)!.copyWith(color: Colors.grey[500])),
              margin: EdgeInsets.fromLTRB(15, 18, 15, 0),
            ),

            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              elevation: 2,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 10),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.do_not_disturb_off, size: 25.0, color: Colors.orange[300]),
                            Container(width: 10),
                            Text("Silent Mode", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Switch(
                              value: isSwitched3,
                              onChanged: (value) {
                                setState(() { isSwitched3 = value; });
                              },
                              activeColor: MyColors.primary,
                              inactiveThumbColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.vibration, size: 25.0, color: Colors.grey[500]),
                            Container(width: 10),
                            Text("Vibrate Mode", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Switch(
                              value: isSwitched4,
                              onChanged: (value) {
                                setState(() { isSwitched4 = value; });
                              },
                              activeColor: MyColors.primary,
                              inactiveThumbColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.volume_up, size: 25.0, color: Colors.green[500]),
                            Container(width: 10),
                            Text("Sound Volume", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.notifications, size: 25.0, color: Colors.grey[400]),
                            Container(width: 10),
                            Text("Ringtone", style: MyText.subhead(context)!.copyWith(
                                color: Colors.grey[600], fontWeight: FontWeight.w500
                            )),
                            Spacer(),
                            Icon(Icons.chevron_right, size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 10),
                  ],
                ),
              ),
            ),
            Container(height: 20),
          ],
        ),
      ),
    );
  }
}

