
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class DialogBasicRoute extends StatefulWidget {

  DialogBasicRoute();

  @override
  DialogBasicRouteState createState() => new DialogBasicRouteState();
}

class DialogBasicRouteState extends State<DialogBasicRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              child: InkWell(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("CONFIRMATION DIALOG", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                ),
                onTap: () {
                  confirmationDialog(context);
                },
              ),
            ),
            Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
            Container(
              width: double.infinity,
              height: 50,
              child: InkWell(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("ALERT DIALOG", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                ),
                onTap: () {
                  alertDialog(context);
                },
              ),
            ),
            Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
            Container(
              width: double.infinity,
              height: 50,
              child: InkWell(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("SINGLE CHOICE DIALOG", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                ),
                onTap: () {
                  showDialog(context: context,builder: (_) => SingleChoiceDialog() );
                },
              ),
            ),
            Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
            Container(
              width: double.infinity,
              height: 50,
              child: InkWell(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("MULTIPLE CHOICE DIALOG", style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.w500
                    )),
                  ),
                ),
                onTap: () {
                  showDialog(context: context,builder: (_) => MultiChoiceDialog() );
                },
              ),
            ),
            Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
          ],
        ),
      ),
    );
  }

  void confirmationDialog(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Use Google's location services ?"),
          content: const Text(MyStrings.middle_lorem_ipsum),
          actions: <Widget>[
            TextButton(
              child: const Text('DISAGREE'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('AGREE'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  void alertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Discard draft ?"),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('DISCARD'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class SingleChoiceDialog extends StatefulWidget {

  SingleChoiceDialog({Key? key}) : super(key: key);

  @override
  SingleChoiceDialogState createState() => new SingleChoiceDialogState();
}

class SingleChoiceDialogState extends State<SingleChoiceDialog>{

  String? selectedRingtone = "None";
  List<String> ringtone = [
    "None", "Callisto", "Ganymede", "Luna"
  ];

  @override
  Widget build(BuildContext context){
    return new SimpleDialog(
      title: new Text("Phone Ringtone"),
      children: ringtone.map((r) => RadioListTile(
        title: Text(r),
        groupValue: selectedRingtone,
        selected: r == selectedRingtone,
        value: r,
        onChanged: (dynamic val) {
          setState(() {
            selectedRingtone = val;
          });
        },
      )).toList(),
    );
  }
}

class MultiChoiceDialog extends StatefulWidget {

  MultiChoiceDialog({Key? key}) : super(key: key);

  @override
  MultiChoiceDialogState createState() => new MultiChoiceDialogState();
}

class MultiChoiceDialogState extends State<MultiChoiceDialog>{

  List<String> colors = [
    "Red", "Green", "Blue", "Purple", "Olive"
  ];

  List<bool> status = [
    false, false, false, false, false
  ];

  bool getValue(String val){
    int index = colors.indexOf(val);
    if(index == -1) return false;
    return status[index];
  }

  void toggleValue(String name){
    int index = colors.indexOf(name);
    if(index == -1) return;
    status[index] = !status[index];
  }

  @override
  Widget build(BuildContext context){
    return new AlertDialog(
      title: new Text("Your prefered color"),
      contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 0),
      content: Wrap(
        direction: Axis.vertical,
        children: colors.map((c) => InkWell(
          child: Row(
            children: <Widget>[
              Checkbox(value: getValue(c), onChanged: (value) {}),
              Text(c),
            ],
          ),
          onTap: (){
            setState(() {
              toggleValue(c);
            });
          },
        )).toList(),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

