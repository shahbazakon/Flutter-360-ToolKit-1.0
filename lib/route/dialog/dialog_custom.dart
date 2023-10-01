
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class DialogCustomRoute extends StatefulWidget {

  DialogCustomRoute();

  @override
  DialogCustomRouteState createState() => new DialogCustomRouteState();
}

class DialogCustomRouteState extends State<DialogCustomRoute> {

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
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Custom") as PreferredSizeWidget?,
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.pink, elevation: 0,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
            ),
          ),
          child: Text("SHOW DIALOG", style: TextStyle(color: Colors.white)),
          onPressed: (){
            showDialog(context: context,builder: (_) => CustomEventDialog() );
          },
        ),
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Material(
              color: MyColors.primary,
              child: Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white,),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text("New event", style: TextStyle(color: Colors.white, fontSize: 20)),
                    Spacer(),
                    InkWell(
                      splashColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
                        child: Text("SAVE", style: TextStyle(color: Colors.white)),
                      ),
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                    )
                    ,
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("heyfromjonathan@gmail.com", style: TextStyle(color: Colors.grey[700]),),
              trailing: Icon(Icons.arrow_drop_down, color: Colors.grey[800],),
              onTap: (){},
            ),
            Divider(color: Colors.grey[300], height: 0, thickness: 0.5),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 34),
                    decoration: InputDecoration( hintText: "Event name", hintStyle: TextStyle(color: Colors.grey) ),
                  ),
                  Container(height: 25),
                  TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration( hintText: "Location", hintStyle: TextStyle(color: Colors.grey) ),
                  ),
                  Container(height: 25),
                  Text("From", style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: InkWell(
                          splashColor: Colors.grey,
                          child: DropdownButton<String>(
                            isExpanded: true, items: [],
                            hint: Text("Fri, May 12 2017", style: TextStyle(fontSize: 18, color: Colors.black)),
                            iconDisabledColor: Colors.black,
                            onChanged: (String? newValue) { },
                          ),
                          onTap: (){},
                        ),
                      ),
                      Container(width: 15),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          splashColor: Colors.grey,
                          child: DropdownButton(
                            isExpanded: true, items: [],
                            hint: Text("04:30 PM", style: TextStyle(fontSize: 18, color: Colors.black)),
                            iconDisabledColor: Colors.black,
                            onChanged: (dynamic v){},
                          ),
                          onTap: (){},
                        ),
                      )
                    ],
                  ),
                  Container(height: 25),
                  Text("To", style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: InkWell(
                          splashColor: Colors.grey,
                          child: DropdownButton<String>(
                            isExpanded: true, items: [],
                            hint: Text("Fri, May 12 2017", style: TextStyle(fontSize: 18, color: Colors.black)),
                            iconDisabledColor: Colors.black,
                            onChanged: (String? newValue){},
                          ),
                          onTap: (){},
                        ),
                      ),
                      Container(width: 15),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          splashColor: Colors.grey,
                          child: DropdownButton(
                            isExpanded: true, items: [],
                            hint: Text("05:30 PM", style: TextStyle(fontSize: 18, color: Colors.black)),
                            iconDisabledColor: Colors.black,
                            onChanged: (dynamic v){},
                          ),
                          onTap: (){},
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    child: Row(
                      children: <Widget>[
                        Checkbox(value: false, onChanged: (value) {}),
                        Text("All day"),
                      ],
                    ),
                    onTap: (){
                      setState(() {

                      });
                    },
                  ),
                  Container(height: 10),
                  InkWell(
                    splashColor: Colors.grey,
                    child: DropdownButton<String>(
                      isExpanded: true, items: [],
                      hint: Text("Pacific Standard Time", style: TextStyle(fontSize: 18, color: Colors.black)),
                      iconDisabledColor: Colors.black,
                      onChanged: (String? newValue){},
                    ),
                    onTap: (){},
                  ),
                ],
              ),
            ),
            Container(height: 20)
          ],
        ),
      )
    );
  }
}



