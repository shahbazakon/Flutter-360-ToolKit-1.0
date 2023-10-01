
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ToolbarCollapseAndPinRoute extends StatefulWidget {

  ToolbarCollapseAndPinRoute();

  @override
  ToolbarCollapseAndPinRouteState createState() => new ToolbarCollapseAndPinRouteState();
}


class ToolbarCollapseAndPinRouteState extends State<ToolbarCollapseAndPinRoute> {

  bool isSwitched1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 180.0, systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              floating: false, pinned: true,
              backgroundColor: MyColors.primary,
              flexibleSpace: FlexibleSpaceBar(),
              bottom: PreferredSize(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                    alignment: Alignment.bottomLeft,
                    constraints: BoxConstraints.expand(height: 50),
                    child: Text("Aliquam Non Erat Tristique", style: MyText.headline(context)!.copyWith(color: Colors.white)),
                  ),
                  preferredSize: Size.fromHeight(50)
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
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
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        child: Text("Description", style: MyText.title(context)!.copyWith(
                            color: MyColors.grey_60, fontWeight: FontWeight.w300
                        )),
                    ),
                    Divider(height: 0),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text(MyStrings.long_lorem_ipsum, style: MyText.body1(context)!.copyWith(
                          color: MyColors.grey_80
                      ), textAlign: TextAlign.justify),
                    ),
                  ],
                ),
              ),
              Container(height: 10),
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text("About me", style: MyText.title(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.w300
                      )),
                    ),
                    Divider(height: 0),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text(MyStrings.long_lorem_ipsum, style: MyText.body1(context)!.copyWith(
                          color: MyColors.grey_80
                      ), textAlign: TextAlign.justify),
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
