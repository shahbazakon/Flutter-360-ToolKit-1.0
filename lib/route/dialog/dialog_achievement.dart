
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DialogAchievementRoute extends StatefulWidget {
  DialogAchievementRoute();

  @override
  DialogCustomAchievementRouteState createState() => new DialogCustomAchievementRouteState();
}

class DialogCustomAchievementRouteState extends State<DialogAchievementRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          iconTheme: IconThemeData(color: MyColors.grey_60),
          title: Text("Dialog Achievement", style: MyText.title(context)!.copyWith(
              color: MyColors.grey_60
          )),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(value: "Settings", child: Text("Settings"),),
              ],
            )
          ]
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomCongratDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("CONGRAT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomChampionDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("CHAMPION",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomLevelDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("LEVEL",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context, builder: (_) => CustomRunningDialog());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey_40,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("RUNNING",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: MyColors.grey_40,
                          )),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomCongratDialog extends StatefulWidget {
  CustomCongratDialog({Key? key}) : super(key: key);

  @override
  CustomCongratDialogState createState() => new CustomCongratDialogState();
}

class CustomCongratDialogState extends State<CustomCongratDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 160,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Image.asset(Img.get('badge_trophy.png'), fit: BoxFit.cover,height: 150,width: 150,),
                    Container(height: 15),
                    Text("Congrats!", style: MyText.title(context)!.copyWith(color: Colors.black)),
                    Container(height: 20),
                    Text("You just Unlocked New Level", textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    Container(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity, color: Colors.blueGrey[600],
                child: Column(
                  children: <Widget>[
                    Text("PLAY NOW", style: MyText.title(context)!.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomChampionDialog extends StatefulWidget {
  CustomChampionDialog({Key? key}) : super(key: key);

  @override
  CustomChampionDialogState createState() => new CustomChampionDialogState();
}

class CustomChampionDialogState extends State<CustomChampionDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 160,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(height: 15),
                    Text("Congratulations !", style: MyText.title(context)!.copyWith(color: Colors.orange[500])),
                    Container(height: 70),
                    Image.asset(Img.get('badge_crown.png'), fit: BoxFit.cover,height: 100,width: 100,),
                    Container(height: 15),
                    Text("C H A M P I O N", style: MyText.title(context)!.copyWith(color: Colors.black)),
                    Container(height: 20),
                    Text("New Badge !", textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    Container(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity, color: Colors.orange[500],
                child: Column(
                  children: <Widget>[
                    Text("PICK NOW", style: MyText.title(context)!.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLevelDialog extends StatefulWidget {
  CustomLevelDialog({Key? key}) : super(key: key);

  @override
  CustomLevelDialogState createState() => new CustomLevelDialogState();
}

class CustomLevelDialogState extends State<CustomLevelDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 160,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(height: 50),
                    Image.asset(Img.get('badge_reward.png'), fit: BoxFit.cover,height: 150,width: 150,),
                    Container(height: 15),
                    Text("New achievement!", style: MyText.title(context)!.copyWith(color: Colors.black)),
                    Container(height: 10),
                    Text("You reached level 8 badge.", textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    Container(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity, color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRunningDialog extends StatefulWidget {
  CustomRunningDialog({Key? key}) : super(key: key);

  @override
  CustomRunningDialogState createState() => new CustomRunningDialogState();
}

class CustomRunningDialogState extends State<CustomRunningDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.asset(Img.get('image_27.jpg'), fit: BoxFit.cover,  width: double.infinity,height: 150,),

                            Container(
                              height: 150,
                              color: Colors.purple[900]!.withOpacity(0.5),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              alignment: Alignment.topCenter,
                              child: Text("Well done Today !",
                                  style: MyText.headline(context)!
                                      .copyWith(color: Colors.white)),
                            ),
                          ],
                        )
                        ]
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    transform: Matrix4.translationValues(0.0, 80.0, 0.0),
                   child: Image.asset(Img.get('badge_ontime.png'), fit: BoxFit.cover,height: 120,width: 120,),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text("Run 10km",
                              style: MyText.subhead(context)!
                                  .copyWith(color: Colors.purple[900])),
                          new Icon(Icons.check,color: Colors.purple[900],),
                        ],
                      )
                    ),
                    Container(
                      height: 15,
                    ),

                    Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text("Drink 1.5L of water10km",
                                style: MyText.subhead(context)!
                                    .copyWith(color: Colors.purple[900])),
                            new Icon(Icons.check,color: Colors.purple[900],),
                          ],
                        )
                    ),
                    Container(
                      height: 15,
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text("Morning workout",
                                style: MyText.subhead(context)!
                                    .copyWith(color: Colors.purple[900])),
                            new Icon(Icons.check,color: Colors.purple[900],),
                          ],
                        )
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 15,left: 3,right: 3),
                      height: 55,
                      alignment: Alignment.center,
                      width : double.infinity, color: Colors.purple[900],
                      child: Text("Continue", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                    ),
                  ],
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
