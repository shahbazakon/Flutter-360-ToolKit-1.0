import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SearchToolbarDarkRoute extends StatefulWidget {

  SearchToolbarDarkRoute();

  @override
  SearchToolbarDarkRouteState createState() => new SearchToolbarDarkRouteState();
}


class SearchToolbarDarkRouteState extends State<SearchToolbarDarkRoute> {

  bool finishLoading = true;
  bool showClear = false;
  final TextEditingController inputController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_90,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        backgroundColor: Colors.grey[900],
        title: TextField(
          maxLines: 1,
          controller: inputController,
          style: new TextStyle(color: Colors.white, fontSize: 18),
          keyboardType: TextInputType.text,
          onSubmitted: (term){
            setState(() {
              finishLoading = false;
            });
            delayShowingContent();
          },
          onChanged: (term){
            setState(() { showClear = (term.length > 2); });
          },
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: MyColors.grey_20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          showClear ? IconButton(
            icon: const Icon(Icons.close, color: MyColors.grey_20),
            onPressed: () {
              inputController.clear();
              showClear = false;
              setState(() {});
            },
          ) : Container(),
        ],
      ),
      body: buildBody(context),
    );
  }


  Widget buildBody(BuildContext context){
    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          opacity: finishLoading ? 1.0 : 0.0,
          duration: Duration(milliseconds: 100),
          child: buildContent(context),
        ),
        AnimatedOpacity(
          opacity: finishLoading ? 0.0 : 1.0,
          duration: Duration(milliseconds: 100),
          child: buildLoading(context),
        ),
      ],
    );
  }

  Widget buildLoading(BuildContext context){
    return Align(
      child: Container(
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
      alignment: Alignment.center,
    );
  }

  Widget buildContent(BuildContext context){
    return Align(
      child: Container(
        width: 180,
        height: 100,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("No result", style: MyText.headline(context)!.copyWith(
                color: Colors.grey[600], fontWeight: FontWeight.bold
            )),
            Container(height: 5),
            Text("Try input more general keyword", textAlign: TextAlign.center, style: MyText.medium(context).copyWith(
                color: Colors.grey[600]
            )),
          ],
        ),
      ),
      alignment: Alignment.center,
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

