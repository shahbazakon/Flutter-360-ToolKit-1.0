import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class ButtonBasicRoute extends StatefulWidget {

  ButtonBasicRoute();

  @override
  ButtonBasicRouteState createState() => new ButtonBasicRouteState();
}


class ButtonBasicRouteState extends State<ButtonBasicRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300]
                  ),
                  child: Text("NORMAL", style: TextStyle(color: Colors.grey[800])),
                  onPressed: (){},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(onPrimary: Colors.blue[700]),
                  child: Text("PRIMARY", style: TextStyle(color: Colors.white)),
                  onPressed: (){},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  child: Text("ACCENT", style: TextStyle(color: Colors.white),),
                  onPressed: (){},
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("NORMAL", style: TextStyle(color: Colors.grey[800]),),
                  onPressed: (){},
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("PRIMARY", style: TextStyle(color: MyColors.primary),),
                  onPressed: (){},
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.transparent),
                  child: Text("ACCENT", style: TextStyle(color: MyColors.accent),),
                  onPressed: (){},
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) return Colors.grey[300];
                      return null;
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) return Colors.grey[400];
                      return null;
                    }),
                  ),
                  child: Text("NORMAL"),
                  onPressed: null,
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Text("PRIMARY", style: TextStyle(color: MyColors.primary),),
                  onPressed: (){},
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Text("ACCENT", style: TextStyle(color: MyColors.accent),),
                  onPressed: (){},
                ),
                Spacer(),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.phone_paused),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.people, color: MyColors.primary,),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.mic, color: MyColors.accent,),
                  onPressed: (){},
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "fab1",
                  backgroundColor: Colors.white,
                  elevation: 3,
                  child: Icon(Icons.mic, color: Colors.black87,),
                  onPressed: () { print('Clicked'); },
                ),
                FloatingActionButton(
                  heroTag: "fab2",
                  backgroundColor: MyColors.primary,
                  elevation: 3,
                  child: Icon(Icons.add, color: Colors.white,),
                  onPressed: () { print('Clicked'); },
                ),
                FloatingActionButton(
                  heroTag: "fab3",
                  backgroundColor: MyColors.accent,
                  elevation: 3,
                  child: Icon(Icons.create, color: Colors.white,),
                  onPressed: () { print('Clicked'); },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

