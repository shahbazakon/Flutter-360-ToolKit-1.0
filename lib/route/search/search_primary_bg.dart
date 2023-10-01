
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SearchPrimaryBgRoute extends StatefulWidget {

  SearchPrimaryBgRoute();

  @override
  SearchPrimaryBgRouteState createState() => new SearchPrimaryBgRouteState();
}


class SearchPrimaryBgRouteState extends State<SearchPrimaryBgRoute> {

  bool finishLoading = true;
  final TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.primary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: MyColors.primary)),
      body: Column(
        children: <Widget>[
          AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark
            ),
            elevation: 0, backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () { Navigator.pop(context);},
              ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    Img.get('logo_small.png'), color: Colors.white,),
                  width: 70, height: 70,
                ),
                Container(height: 15),
                Text("Welcome again!", style: MyText.headline(context)!.copyWith(color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
                Container(height: 5),
                Text("Hello Edward.S", style: MyText.subhead(context)!.copyWith(
                    color: Colors.white,
                )),
              ],
            ),
          ),
          Container(
            child: Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50),),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(20), elevation: 1,
              child: Row(
                children: <Widget>[
                  Container(width: 5),
                  IconButton(icon: Icon(Icons.mic, color: Colors.grey[600]), onPressed: (){
                    inputController.clear();
                    setState(() {});
                  }),
                  Container(width: 5, height: 50),
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
                ],
              ),
            ),
          ),
          Container(
            width: 55, height: 55,
            child: finishLoading ? FloatingActionButton(
              heroTag: "fab3", backgroundColor: Colors.white, elevation: 1,
              child: Icon(Icons.search, color: MyColors.primary,),
              onPressed: () {
                setState(() {
                  finishLoading = false;
                });
                delayShowingContent();
              },
            ) : CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
            ),
          ),
          Container(height: 80),
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

