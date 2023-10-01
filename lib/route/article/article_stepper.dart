import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleStepperRoute extends StatefulWidget {

  ArticleStepperRoute();

  @override
  ArticleStepperRouteState createState() => new ArticleStepperRouteState();
}


class ArticleStepperRouteState extends State<ArticleStepperRoute> {

  PageController pageController = PageController(
    initialPage: 0,
  );
  int page = 0;
  int max = 4;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: MyColors.grey_5)),
      body: Container(
        width: double.infinity, height: double.infinity,
        child: Column(children: <Widget>[
          Expanded(
            child: PageView(
              onPageChanged: onPageViewChange,
              controller: pageController,
              children: <Widget>[
                buildPageTitle(),
                buildPageContent(MyStrings.long_lorem_ipsum),
                buildPageContent(MyStrings.long_lorem_ipsum_2),
                buildPageContent(MyStrings.long_lorem_ipsum)
              ],
            ),
          ),
          Container(
            height: 55,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back, color: MyColors.grey_60),
                  onPressed: () { Navigator.pop(context); },
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: buildDots(context),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline, color: MyColors.grey_60),
                  onPressed: () { },
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  void onPageViewChange(int _page) {
    page = _page;
    setState(() {});
  }

  Widget buildPageTitle(){
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(Img.get('image_28.jpg'),fit: BoxFit.cover, height: double.infinity, width: double.infinity),
          Container( height: double.infinity, width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.3), Colors.black.withOpacity(0.5)],
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Elizabeth".toUpperCase(), style: MyText.subhead(context)!.copyWith(
                      color: MyColors.grey_10
                  )),
                  Text("Interdum Lectus Bibendum Suspendisse Potenti Nec.", style: MyText.display1(context)!.copyWith(
                      color: MyColors.grey_3, fontFamily: "serif"
                  )),
                  Container(width: 100, height: 2, color: MyColors.grey_10, margin: EdgeInsets.symmetric(vertical: 10)),
                  Text("DIGITAL ECONOMY", style: MyText.subhead(context)!.copyWith(
                      color: MyColors.grey_20, fontWeight: FontWeight.bold
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget buildPageContent(String text){
    return Container(
      padding: EdgeInsets.all(15),
      color: MyColors.grey_5,
      child: Stack(
        children: <Widget>[
          Text(text, textAlign : TextAlign.justify, style: MyText.medium(context).copyWith(
            color: MyColors.grey_80, fontFamily: "serif", height: 1.6
          ))
        ],
      ),
    );
  }

  Widget buildDots(BuildContext context){
    Widget widget;

    List<Widget> dots = [];
    for(int i=0; i<max; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 6,
        width: 6,
        child: CircleAvatar(
          backgroundColor: page == i ? Colors.black : MyColors.grey_20,
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


