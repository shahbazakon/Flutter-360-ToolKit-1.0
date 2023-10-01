import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class SliderImageHeaderRoute extends StatefulWidget {

  SliderImageHeaderRoute();

  @override
  SliderImageHeaderRouteState createState() => new SliderImageHeaderRouteState();
}


class SliderImageHeaderRouteState extends State<SliderImageHeaderRoute> {

  int page = 0;
  static const int MAX = 5;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Product") as PreferredSizeWidget?,
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
                      children: <Widget>[
                        Image.asset(Img.get('image_shop_9.jpg'),fit: BoxFit.cover),
                        Image.asset(Img.get('image_shop_10.jpg'),fit: BoxFit.cover),
                        Image.asset(Img.get('image_shop_11.jpg'),fit: BoxFit.cover),
                        Image.asset(Img.get('image_shop_12.jpg'),fit: BoxFit.cover),
                        Image.asset(Img.get('image_shop_13.jpg'),fit: BoxFit.cover),
                      ],
                      onPageChanged: onPageViewChange,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black.withOpacity(0.0), Colors.black.withOpacity(0.5)])
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: buildDots(context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              elevation: 2,
              margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Roll-Up Neocity Backpack", style: MyText.headline(context)!.copyWith(color: Colors.grey[900])),
                    Container(height: 5),
                    Text("Shop Adidas", style: MyText.subhead(context)!.copyWith(color: Colors.grey[600])),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        StarRating(starCount: 5, rating: 3.5, color: Colors.yellow, size: 18),
                        Container(width: 5),
                        Text("381,380", style: MyText.caption(context)!.copyWith(color: Colors.grey[400])),
                        Spacer(),
                        Text("\$ 80.00", style: MyText.headline(context)!.copyWith(
                            color: Colors.lightGreen[700], fontWeight: FontWeight.bold
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
              elevation: 2,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Description", style: MyText.headline(context)!.copyWith(color: Colors.grey[900])),
                    Container(height: 5),
                    Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify,
                        style: MyText.subhead(context)!.copyWith(color: Colors.grey[600])
                    ),
                    Container(height: 20),
                  ],
                ),
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

  Widget buildDots(BuildContext context){
    Widget widget;

    List<Widget> dots = [];
    for(int i=0; i<MAX; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? Colors.blue : Colors.grey[100],
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

