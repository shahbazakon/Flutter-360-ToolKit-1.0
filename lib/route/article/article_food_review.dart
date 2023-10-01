import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ArticleFoodReviewRoute extends StatefulWidget {

  ArticleFoodReviewRoute();

  @override
  ArticleFoodReviewRouteState createState() => new ArticleFoodReviewRouteState();
}


class ArticleFoodReviewRouteState extends State<ArticleFoodReviewRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
            ),
            centerTitle: true,
            title: Text("Food Review",style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: MyColors.grey_80),
              onPressed: () { Navigator.pop(context);},
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search, color: MyColors.grey_80),
                onPressed: () {},
              ),// overflow menu
            ]
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset(Img.get('image_29.jpg'),fit: BoxFit.cover),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                transform: Matrix4.translationValues(0.0, -70.0, 0.0),
                child: Card(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2)),
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Asian Salad",style: MyText.title(context)!.copyWith(color: MyColors.grey_90)),
                                  Text("Medium",style: MyText.body2(context)!.copyWith(color: MyColors.grey_40)),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.favorite_border, color: MyColors.grey_60),
                                onPressed: (){},
                              )
                            ],
                          ),
                          Divider(),
                          Container(height: 10),
                          Text("Description",style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
                          Container(height: 10),
                          Text(MyStrings.long_lorem_ipsum, textAlign: TextAlign.justify, style: MyText.subhead(context)!.copyWith(
                              color: MyColors.grey_60
                          )),
                          Container(height: 15),
                          Text(MyStrings.long_lorem_ipsum_2, textAlign: TextAlign.justify, style: MyText.subhead(context)!.copyWith(
                              color: MyColors.grey_60
                          ))
                        ],
                      ),
                    )
                ),
              )
            ],
          ),
        )
    );
  }

}

