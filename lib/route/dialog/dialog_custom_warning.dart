
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class DialogCustomWarningRoute extends StatefulWidget {

  DialogCustomWarningRoute();

  @override
  DialogCustomWarningRouteState createState() => new DialogCustomWarningRouteState();
}

class DialogCustomWarningRouteState extends State<DialogCustomWarningRoute> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      showDialog(context: context,builder: (_) => CustomEventDialog() );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Custom Warning") as PreferredSizeWidget?,
      body: Container(
          alignment: Alignment.center,
          child: FloatingActionButton.extended(
            elevation: 1,
            icon: Icon(Icons.open_in_browser),
            label: Text("SHOW DIALOG"),
            onPressed: () {
              showDialog(context: context,builder: (_) => CustomEventDialog() );
            },
          )
      ),
    );
  }
}


class CustomEventDialog extends StatefulWidget {

  CustomEventDialog({Key? key}) : super(key: key);

  @override
  CustomEventDialogState createState() => new CustomEventDialogState();
}

class CustomEventDialogState extends State<CustomEventDialog>{

  @override
  Widget build(BuildContext context){
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
                width : double.infinity, color: Colors.red[300],
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Icon(Icons.cloud_off, color: Colors.white, size: 80),
                    Container(height: 10),
                    Text("No internet !", style: MyText.title(context)!.copyWith(color: Colors.white)),
                    Container(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(MyStrings.short_lorem_ipsum, textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                    Container(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[300],
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)
                        ),
                      ),
                      child: Text("Retry", style: TextStyle(color: Colors.white)),
                      onPressed: (){
                        Navigator.of(context).pop();
                        MyToast.show("Retry clicked", context);
                      },
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



