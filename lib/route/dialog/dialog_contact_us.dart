
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DialogContactUsRoute extends StatefulWidget {
  DialogContactUsRoute();

  @override
  DialogContactUsState createState() => new DialogContactUsState();
}

class DialogContactUsState extends State<DialogContactUsRoute> {
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
          title: Text("", style: MyText.title(context)!.copyWith(color: MyColors.grey_60)),
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
                  showDialog(context: context, builder: (_) => DialogAboutProject());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey_40, width: 2.0,),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("PROJECT", textAlign: TextAlign.center, style: TextStyle(color: MyColors.grey_40,)),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (_) => DialogAboutDesigner());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey_40, width: 2.0,),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("DESIGNER", textAlign: TextAlign.center, style: TextStyle(color: MyColors.grey_40,)),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (_) => DialogAboutDark());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey_40, width: 2.0,),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("DARK", textAlign: TextAlign.center, style: TextStyle(color: MyColors.grey_40,)),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (_) => DialogImageDark());
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.grey_40, width: 2.0,),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("IMAGE", textAlign: TextAlign.center, style: TextStyle(color: MyColors.grey_40,)),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

//  dialog PROJECT -------------------------------------------------------------

class DialogAboutProject extends StatefulWidget {

  @override
  DialogAboutProjectState createState() => new DialogAboutProjectState();
}

class DialogAboutProjectState extends State<DialogAboutProject>{

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 310,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.green),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Spacer(),
                  ],
                ),
                Container(height: 80),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width : double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Get in touch if you\nneed help with a\nproject",
                          textAlign : TextAlign.left, style: MyText.headline(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)
                      ),
                      Container(height: 50),
                      Text("California\n4023  Glendale Avenue\nNorthridge",
                          textAlign : TextAlign.start, style: MyText.body1(context)!.copyWith(color: MyColors.grey_40, height: 1.5)
                      ),
                      Container(height: 35),
                      Row(
                        children: [
                          Expanded(child: Text("best@company.com\n0818-725-8539",
                            textAlign : TextAlign.start,
                            style: MyText.body1(context)!.copyWith(color: MyColors.grey_40, height: 1.5),
                          )),
                          FloatingActionButton(
                            heroTag: null,
                            backgroundColor: Colors.green, mini: true,
                            elevation: 0, child: Icon(Icons.email, color: Colors.white),
                            onPressed: () { print('Clicked'); },
                          ),
                          FloatingActionButton(
                            heroTag: null,
                            backgroundColor: Colors.green, mini: true,
                            elevation: 0, child: Icon(Icons.phone, color: Colors.white),
                            onPressed: () { print('Clicked'); },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//  dialog DESIGNER ------------------------------------------------------------

class DialogAboutDesigner extends StatefulWidget {

  @override
  DialogAboutDesignerState createState() => new DialogAboutDesignerState();
}

class DialogAboutDesignerState extends State<DialogAboutDesigner>{

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 310,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.blue[900]),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Divider(height: 0, color: MyColors.grey_20),
              Container(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width : double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(Img.get("photo_male_6.jpg")),
                    ),
                    Container(height: 10),
                    Text("Evans Collins",
                        textAlign : TextAlign.left, style: MyText.headline(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)
                    ),
                    Text("Product Designer",
                        textAlign : TextAlign.start, style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                    Container(height: 35),
                    Text(MyStrings.medium_lorem_ipsum,
                        textAlign : TextAlign.start, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  ],
                ),
              ),
              Container(height: 35),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                color: Colors.blue[900],
                child: Column(
                  children: [
                    Text("Check my social media",
                        textAlign : TextAlign.start, style: MyText.body1(context)!.copyWith(color: MyColors.grey_20)
                    ),
                    Container(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                            Img.get("ic_social_twitter.png"), height: 25, width: 25
                        ),
                        Container(width: 25),
                        Image.asset(
                            Img.get("ic_social_facebook.png"), height: 25, width: 25
                        ),
                        Container(width: 25),
                        Image.asset(
                            Img.get("ic_social_instagram.png"), height: 25, width: 25
                        ),
                      ],
                    ),
                    Container(height: 5),
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


//  dialog DARK ----------------------------------------------------------------

class DialogAboutDark extends StatefulWidget {

  @override
  DialogAboutDarkState createState() => new DialogAboutDarkState();
}

class DialogAboutDarkState extends State<DialogAboutDark>{

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 310,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10),),
          color: MyColors.grey_90, clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.lightGreen[800]),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Container(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(Img.get("photo_female_4.jpg")),
                    ),
                    Container(height: 10),
                    Text("Mary Jackson",
                        textAlign : TextAlign.left, style: MyText.headline(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                    ),
                    Container(height: 2),
                    Text("UI UX Designer",
                        textAlign : TextAlign.start, style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                    ),
                    Container(height: 35),
                    Text(MyStrings.medium_lorem_ipsum,
                        textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)
                    ),
                  ],
                ),
              ),
              Container(height: 35),
              Divider(height: 0, color: Colors.lightGreen[800]),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    Text("Check my social media",
                        textAlign : TextAlign.start, style: MyText.body1(context)!.copyWith(color: MyColors.grey_20)
                    ),
                    Container(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                            Img.get("ic_social_twitter.png"), height: 25, width: 25
                        ),
                        Container(width: 25),
                        Image.asset(
                            Img.get("ic_social_facebook.png"), height: 25, width: 25
                        ),
                        Container(width: 25),
                        Image.asset(
                            Img.get("ic_social_instagram.png"), height: 25, width: 25
                        ),
                      ],
                    ),
                    Container(height: 5),
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


//  dialog IMAGE ---------------------------------------------------------------

class DialogImageDark extends StatefulWidget {

  @override
  DialogAboutImageState createState() => new DialogAboutImageState();
}

class DialogAboutImageState extends State<DialogImageDark>{

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 280,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(6),),
          color: Colors.white, clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Image.asset(Img.get("photo_male_2.jpg"), fit: BoxFit.cover, width: 280, height: 400),
              Container(color: Colors.black.withOpacity(0.2), width: 280, height: 400),
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(5),
                    child: IconButton(
                      icon: Icon(Icons.apps, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(height: 100),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width : double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 52, backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50, backgroundImage: AssetImage(Img.get("photo_male_2.jpg")),
                          ),
                        ),
                        Container(height: 10),
                        Text("Adams Green",
                            textAlign : TextAlign.left, style: MyText.headline(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                        ),
                        Container(height: 2),
                        Text("UI UX Designer",
                            textAlign : TextAlign.start, style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)
                        ),
                      ],
                    ),
                  ),
                  Container(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                            Img.get("ic_social_twitter.png"), height: 20, width: 20
                        ),
                        Container(width: 20),
                        Image.asset(
                            Img.get("ic_social_facebook.png"), height: 20, width: 20
                        ),
                        Container(width: 20),
                        Image.asset(
                            Img.get("ic_social_instagram.png"), height: 20, width: 20
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}