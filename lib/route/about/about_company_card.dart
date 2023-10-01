import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class AboutCompanyCardRoute extends StatefulWidget {

  AboutCompanyCardRoute();

  @override
  AboutCompanyCardRouteState createState() => new AboutCompanyCardRouteState();
}

class AboutCompanyCardRouteState extends State<AboutCompanyCardRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),// overflow menu
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Our Team", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
                      Container(height: 5),
                      Center(
                        child: Container(width: 30, height: 5, decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        )),
                      ),
                      Container(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(Img.get('photo_male_2.jpg')),
                                ),
                                Container(height: 8),
                                Text("Adams G", style: MyText.caption(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                                Container(height: 4),
                                Text("Executive Officer", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(Img.get('photo_female_2.jpg')),
                                ),
                                Container(height: 8),
                                Text("Betty L", style: MyText.caption(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                                Container(height: 4),
                                Text("Marketing", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(Img.get('photo_male_7.jpg')),
                                ),
                                Container(height: 8),
                                Text("Roberts", style: MyText.caption(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                                Container(height: 4),
                                Text("Business Analyst", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(Img.get('photo_male_3.jpg')),
                                ),
                                Container(height: 8),
                                Text("Miller W", style: MyText.caption(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                                Container(height: 4),
                                Text("UX Designer", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(Img.get('photo_male_5.jpg')),
                                ),
                                Container(height: 8),
                                Text("Kevin John", style: MyText.caption(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                                Container(height: 4),
                                Text("Web Developer", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(Img.get('photo_female_1.jpg')),
                                ),
                                Container(height: 8),
                                Text("Laura M", style: MyText.caption(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w600)),
                                Container(height: 4),
                                Text("Mobile Dev", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60, fontWeight: FontWeight.w400)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(height: 10),
                    ],
                  ),
                ),
              ),
              Container(height: 15),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Mission", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
                      Container(height: 5),
                      Center(
                        child: Container(width: 30, height: 5, decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        )),
                      ),
                      Container(height: 15),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(MyStrings.long_lorem_ipsum, textAlign : TextAlign.justify, style: MyText.body2(context)!.copyWith(
                          color: MyColors.grey_60, fontWeight: FontWeight.w300,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 15),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Address", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.w500)),
                      Container(height: 5),
                      Center(
                        child: Container(width: 30, height: 5, decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        )),
                      ),
                      Container(height: 15),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(Img.get('image_maps.jpg'), height: 150, width: double.infinity, fit: BoxFit.cover),
                            Container(height: 15),
                            Text("3265  Hinkle Deegan Lake Road, Dundee", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                            Text("New York, United State", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                            Text("14837", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

