
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class DialogGDPRBasicRoute extends StatefulWidget {

  DialogGDPRBasicRoute();

  @override
  DialogGDPRBasicRouteState createState() => new DialogGDPRBasicRouteState();
}

class DialogGDPRBasicRouteState extends State<DialogGDPRBasicRoute> {

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
          title: Text("GDPR Basic", style: MyText.title(context)!.copyWith(
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
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity, height: 50,
                color: Colors.cyan[700],
                child: Text("Privacy & Policy", style: MyText.title(context)!.copyWith(color: Colors.white)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Text(MyStrings.gdpr_privacy_policy, style: MyText.body1(context)!.copyWith(color: MyColors.grey_60)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    child: Text("DECLINE", style: TextStyle(color: Colors.cyan[700])),
                    onPressed: (){ Navigator.pop(context); },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    child: Text("ACCEPT", style: TextStyle(color: Colors.cyan[700])),
                    onPressed: (){ Navigator.pop(context); },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}