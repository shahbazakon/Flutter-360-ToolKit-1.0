import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';

class SearchPrimaryRoute extends StatefulWidget {

  SearchPrimaryRoute();

  @override
  SearchPrimaryRouteState createState() => new SearchPrimaryRouteState();
}


class SearchPrimaryRouteState extends State<SearchPrimaryRoute> {
  bool finishLoading = true;
  final TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.grey[100])),
      body: Column(
        children: <Widget>[
          AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              elevation: 0, backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.menu, color: MyColors.grey_60),
                onPressed: () { Navigator.pop(context);},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert, color: MyColors.grey_60),
                  onPressed: () {},
                ),
              ]
          ),
          Spacer(),
          Container(
            child: Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(20), elevation: 1,
              child: Row(
                children: <Widget>[
                  Container(width: 15, height: 55),
                  Expanded(
                    child: TextField(maxLines: 1,
                      controller: inputController,
                      style: TextStyle(color: Colors.grey[600], fontSize: 18),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search or type URL',
                        hintStyle: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.mic, color: Colors.grey[600]), onPressed: (){
                    inputController.clear();
                    setState(() {});
                  }),
                  Container(width: 5),
                ],
              ),
            ),
          ),
          Container(
            width: 55, height: 55,
            child: finishLoading ? FloatingActionButton(
              heroTag: "fab3", backgroundColor: MyColors.primary, elevation: 1,
              child: Icon(Icons.search, color: Colors.white,),
              onPressed: () {
                setState(() {
                  finishLoading = false;
                });
                delayShowingContent();
              },
            ) : CircularProgressIndicator(),
          ),
          Spacer(),
        ],
      ),
    );
  }

  void delayShowingContent(){
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        finishLoading = true;
      });
    });
  }

}

