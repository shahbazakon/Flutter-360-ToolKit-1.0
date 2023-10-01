import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SearchToolbarLightRoute extends StatefulWidget {

  SearchToolbarLightRoute();

  @override
  SearchToolbarLightRouteState createState() => new SearchToolbarLightRouteState();
}


class SearchToolbarLightRouteState extends State<SearchToolbarLightRoute> {

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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
        backgroundColor: Colors.white,
        title: TextField(
          maxLines: 1,
          controller: inputController,
          style: new TextStyle(color: Colors.grey[800], fontSize: 18),
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
              hintStyle: TextStyle(fontSize: 20.0),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: MyColors.grey_90),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          showClear ? IconButton(
            icon: const Icon(Icons.close, color: MyColors.grey_90),
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
                color: Colors.grey[500], fontWeight: FontWeight.bold
            )),
            Container(height: 5),
            Text("Try input more general keyword", textAlign: TextAlign.center, style: MyText.medium(context).copyWith(
                color: Colors.grey[500]
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

