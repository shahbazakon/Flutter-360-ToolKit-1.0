import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class BottomSheetListRoute extends StatefulWidget {

  BottomSheetListRoute();

  @override
  BottomSheetListRouteState createState() => new BottomSheetListRouteState();
}

class BottomSheetListRouteState extends State<BottomSheetListRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "List") as PreferredSizeWidget?,
      body: Center(
        child: Text("Press button \nbelow", textAlign : TextAlign.center, style: MyText.display1(context)!.copyWith(
            color: Colors.grey[300]
        )),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
        backgroundColor: Colors.pink[500],
        elevation: 3,
        child: Icon(Icons.arrow_upward, color: Colors.white,),
        onPressed: () {
          showSheet(context);
        },
      ),
    );
  }
}

void showSheet(context) {
  showModalBottomSheet(context: context, builder: (BuildContext bc) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      child: Wrap(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.visibility),
            title: Text("Preview"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Share"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Get link"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.content_copy),
            title: Text("Make a copy"),
            onTap: (){},
          ),
        ],
      ),
    );
  });
}
