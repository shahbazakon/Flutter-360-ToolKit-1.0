import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ToolbarCollapseRoute extends StatefulWidget {

  ToolbarCollapseRoute();

  @override
  ToolbarCollapseRouteState createState() => new ToolbarCollapseRouteState();
}


class ToolbarCollapseRouteState extends State<ToolbarCollapseRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250.0, systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(Img.get('image_9.jpg'),fit: BoxFit.cover),
              ),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),// overflow menu
                PopupMenuButton<String>(
                  onSelected: (String value){},
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                  ],
                )
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  color: MyColors.primary,
                  child: Text("Sport", style: TextStyle(color: Colors.white),),
                ),
                Container(height: 15),
                Text(MyStrings.short_lorem_ipsum, style: MyText.headline(context)!.copyWith(
                  color: Colors.grey[900], fontWeight: FontWeight.bold
                )),
                Container(height: 5),
                Row(
                  children: <Widget>[
                    Icon( Icons.event, size: 20.0, color: Colors.grey),
                    Container(width: 5),
                    Text("16 Mar 2016", style: MyText.body1(context)!.copyWith(
                        color: Colors.grey
                    )),
                  ],
                ),
                Container(height: 20),
                Text(MyStrings.very_long_lorem_ipsum,textAlign: TextAlign.justify)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

