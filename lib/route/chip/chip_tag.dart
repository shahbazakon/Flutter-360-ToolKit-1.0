
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChipTagRoute extends StatefulWidget {

  ChipTagRoute();

  @override
  ChipTagRouteState createState() => new ChipTagRouteState();
}


class ChipTagRouteState extends State<ChipTagRoute> {

  TextEditingController inputController = new TextEditingController();
  TextEditingController inputController2 = new TextEditingController();
  TextEditingController inputController3 = new TextEditingController();
  List<Widget> items = [];

  @override
  void initState() {
    inputController2.text = "My Photograph Masterpiece";
    inputController3.text = MyStrings.long_lorem_ipsum;
    items.add(Chip(label: Text('black')));
    items.add(Chip(label: Text('city')));
    items.add(buildInput());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Tag"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.done), onPressed: () {},),// overflow menu
          ]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200, width: double.infinity,
              child: Image.asset(Img.get('image_3.jpg'),fit: BoxFit.cover),
            ),
            Container(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text("Title", style: MyText.caption(context)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: inputController2,
                maxLines: 1, minLines: 1,
                keyboardType: TextInputType.text,
                style: MyText.medium(context),
                decoration: new InputDecoration.collapsed(
                  hintText: 'Write title'
                )
              )
            ),
            Container(height: 10),
            Divider(height: 0, thickness: 0.5),
            Container(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text("Project Tag(s)", style: MyText.caption(context)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Wrap(
                      spacing: 10,
                      children: items,
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 15),
            Divider(height: 0, thickness: 0.5),
            Container(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text("Description", style: MyText.caption(context)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                controller: inputController3, maxLines: null,
                keyboardType: TextInputType.multiline,
                style: MyText.subhead(context),
                decoration: new InputDecoration.collapsed(
                    hintText: 'Write description'
                )
              )
            ),
            Container(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildInput(){
    return Container(width: 80,
        child: TextField(
          controller: inputController,
          maxLines: 1, minLines: 1,
          keyboardType: TextInputType.text,
          decoration: new InputDecoration.collapsed(
              hintText: '...'
          ),
          onSubmitted: (String val) {
            inputController.clear();
            setState(() {
              items.insert(items.length-1, Chip(label: Text(val)));
            });
          },
        )
    );
  }

}

