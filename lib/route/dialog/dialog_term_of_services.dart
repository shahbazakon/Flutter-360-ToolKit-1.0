
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DialogTermOfServicesRoute extends StatefulWidget {

  DialogTermOfServicesRoute();

  @override
  DialogTermOfServicesRouteState createState() => new DialogTermOfServicesRouteState();
}

class DialogTermOfServicesRouteState extends State<DialogTermOfServicesRoute> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      showDialog(context: context,builder: (_) => GdprBasicDialog() );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          iconTheme: IconThemeData(color: MyColors.grey_60),
          title: Text("Term of Services", style: MyText.title(context)!.copyWith(
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
          child: FloatingActionButton.extended(
            elevation: 0, backgroundColor: Colors.grey[200],
            label: Text("SHOW DIALOG", style: TextStyle(color: Colors.grey[900])),
            onPressed: () {
              showDialog(context: context,builder: (_) => GdprBasicDialog() );
            },
          )
      ),
    );
  }
}


class GdprBasicDialog extends StatefulWidget {

  GdprBasicDialog({Key? key}) : super(key: key);

  @override
  GdprBasicDialogState createState() => new GdprBasicDialogState();
}

class GdprBasicDialogState extends State<GdprBasicDialog>{

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
        color: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Term of Services", style: MyText.title(context)!.copyWith(
                            color: Colors.teal[500], fontWeight: FontWeight.bold, fontFamily: "serif"
                        )),
                        Container(height: 2),
                        Text("last update January 2018", style: MyText.caption(context)!.copyWith(
                            color: Colors.teal[200], fontFamily: "serif"
                        )),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.file_download, color: MyColors.grey_60),
                    onPressed: () { },
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: MyColors.grey_60),
                    onPressed: () { Navigator.pop(context); },
                  )
                ],
              ),
            ),
            Divider(height: 0, thickness: 0.5),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(15),
                child: Text(MyStrings.very_long_lorem_ipsum, textAlign : TextAlign.justify, style: MyText.body1(context)!.copyWith(
                    color: MyColors.grey_80, fontFamily: "serif"
                )),
              ),
            ),
            Divider(height: 0, thickness: 0.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("DECLINE", style: TextStyle(color: Colors.teal[500])),
                  onPressed: (){ Navigator.pop(context); },
                ),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("ACCEPT", style: TextStyle(color: Colors.teal[500])),
                  onPressed: (){ Navigator.pop(context); },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}