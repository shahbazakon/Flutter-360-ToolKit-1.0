import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ToastSnackbarBasicRoute extends StatefulWidget {

  ToastSnackbarBasicRoute();

  @override
  ToastSnackbarBasicRouteState createState() => new ToastSnackbarBasicRouteState();
}


class ToastSnackbarBasicRouteState extends State<ToastSnackbarBasicRoute> {

  late BuildContext _scaffoldCtx;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic") as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Toast"),
                  Container(height: 10, width: 0),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: MyColors.accent
                      ),
                      child: Text("SIMPLE", style: TextStyle(color: Colors.white)),
                      onPressed: (){ showSimpleToast(context); },
                    ),
                  ),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: MyColors.accent
                      ),
                      child: Text("COLORED PRIMARY", style: TextStyle(color: Colors.white)),
                      onPressed: (){showColoredPrimaryToast(context);},
                    ),
                  ),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: MyColors.accent
                      ),
                      child: Text("COLORED ACCENT", style: TextStyle(color: Colors.white)),
                      onPressed: (){showColoredAccentToast(context);},
                    ),
                  ),
                  Container(height: 10, width: 0),
                  Container(width: 300, height: 1, color: Colors.grey[300]),
                  Container(height: 10, width: 0),
                  Text("Snackbar"),
                  Container(height: 10, width: 0),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: MyColors.accent
                      ),
                      child: Text("SIMPLE", style: TextStyle(color: Colors.white)),
                      onPressed: (){showSimpleSnackbar(context);},
                    ),
                  ),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: MyColors.accent
                      ),
                      child: Text("WITH ACTION", style: TextStyle(color: Colors.white)),
                      onPressed: (){snackBarWithAction(context);},
                    ),
                  ),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          primary: MyColors.accent
                      ),
                      child: Text("WITH ACTION INDEFINITE", style: TextStyle(color: Colors.white)),
                      onPressed: (){snackBarWithActionIndefinite(context);},
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }

  void showSimpleToast(BuildContext context){
    MyToast.show("Simple Toast", context);
  }

  void showColoredPrimaryToast(BuildContext context){
    MyToast.show("Colored Primary", context, backgroundColor: MyColors.primary);
  }

  void showColoredAccentToast(BuildContext context){
    MyToast.show("Colored Primary", context, backgroundColor: MyColors.accent);
  }

  void showSimpleSnackbar(BuildContext context){
    ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text("Simple Snackbar"),
      duration: Duration(seconds: 1),
    ));
  }

  void snackBarWithAction(BuildContext context){
    ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text("Snackbar With Action"),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){},
      ),
    ));
  }

  void snackBarWithActionIndefinite(BuildContext context){
    ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
      content: Text("Snackbar With Action INDEFINITE"),
      duration: Duration(days: 2),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
            content: Text("UNDO CLICKED!"),
            duration: Duration(seconds: 1),
          ));
        },
      ),
    ));
  }

}

