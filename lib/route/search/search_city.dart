import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/included/include_store_simple.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SearchCityRoute extends StatefulWidget {

  SearchCityRoute();

  @override
  SearchCityRouteState createState() => new SearchCityRouteState();
}


class SearchCityRouteState extends State<SearchCityRoute> {

  bool isSwitched1 = true;
  bool finishLoading = true;
  final TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_3,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              expandedHeight: 200,
              floating: false, pinned: true,
              backgroundColor: MyColors.primary,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Image.asset(Img.get('image_16.jpg'), fit: BoxFit.cover, width: double.infinity),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 90),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Hey There", style: MyText.title(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                          Container(height: 5),
                          Text("Let's experience Paris together", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(25),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    alignment: Alignment.bottomCenter,
                    constraints: BoxConstraints.expand(height: 80),
                    child: Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 1,
                      child: Row(
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.search, color: Colors.grey[600]), onPressed: (){
                            inputController.clear();
                            setState(() {});
                          }),
                          Expanded(
                            child: TextField(maxLines: 1,
                              controller: inputController,
                              style: TextStyle(color: Colors.grey[600], fontSize: 18),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Locations',
                                hintStyle: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
              automaticallyImplyLeading: false,
            ),
          ];
        },
        body: SingleChildScrollView(
          child: IncludeStoreSimple.get(context),
        ),
      ),
    );
  }
}

