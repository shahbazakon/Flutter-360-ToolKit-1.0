import 'dart:async';

import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/model_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SliderImageHeaderAutoRoute extends StatefulWidget {

  SliderImageHeaderAutoRoute();

  @override
  SliderImageHeaderAutoRouteState createState() => new SliderImageHeaderAutoRouteState();
}


class SliderImageHeaderAutoRouteState extends State<SliderImageHeaderAutoRoute> {

  static const int MAX = 5;
  List<ModelImage> items = Dummy.getModelImage();
  int page = 0;
  Timer? timer;
  late ModelImage curObj;

  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    curObj = items[0];
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      page = page + 1;
      if (page >= MAX) page = 0;
      pageController.animateToPage(page, duration: Duration(milliseconds: 200), curve: Curves.linear);
      print("animateToPage");
      setState(() {
        curObj = items[page];
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    if(timer != null && timer!.isActive) timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Places") as PreferredSizeWidget?,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              elevation: 2,
              margin: EdgeInsets.all(0),
              child: Container(
                height: 250,
                child: Stack(
                  children: <Widget>[
                    PageView(
                      controller: pageController,
                      children: getImagesHeader(),
                      onPageChanged: onPageViewChange,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black.withOpacity(0.0), Colors.black.withOpacity(0.6)])
                        ),
                      )
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(curObj.name, style: MyText.medium(context).copyWith(color: Colors.white)),
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on, size: 10, color: Colors.white),
                                Container(width: 5),
                                Text(curObj.brief, style: TextStyle(color: Colors.white)),
                                Spacer(),
                                buildDots(context)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(height: 10),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Description", style: MyText.headline(context)!.copyWith(color: Colors.grey[900])),
                  Container(height: 10),
                  Text(MyStrings.very_long_lorem_ipsum, textAlign: TextAlign.justify,
                      style: MyText.subhead(context)!.copyWith(color: Colors.grey[600])
                  ),
                  Container(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onPageViewChange(int _page) {
    page = _page;
    setState(() {});
  }

  List<Widget> getImagesHeader(){
    List<Widget> lw = [];
    for(ModelImage mi in items){
      lw.add(Image.asset(Img.get(mi.image),fit: BoxFit.cover));
    }
    return lw;
  }

  Widget buildDots(BuildContext context){
    Widget widget;

    List<Widget> dots = [];
    for(int i=0; i<MAX; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 9,
        width: 9,
        decoration: BoxDecoration(
          color: page == i ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white, width: 1.5)
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }
}

