import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/music_album.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:get/get.dart';

class BottomSheetExpandRoute extends StatefulWidget {

  BottomSheetExpandRoute();

  @override
  BottomSheetExpandState createState() => new BottomSheetExpandState();
}

class BottomSheetExpandState extends State<BottomSheetExpandRoute> {

  bool showSheet = false;
  late List<MusicAlbum> items;
  var expand = false.obs;
  late double screenHeight;
  double initialSize = 0.4;

  void onItemClick(int index, MusicAlbum obj) {

  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getMusicAlbum();

  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight:0, systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.light
), backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity, height: screenHeight - (screenHeight * initialSize),
            child: Image.asset(Img.get('image_maps.jpg'),fit: BoxFit.cover),
          ),
          Obx(()=> Column(
            children: [
              expand.value ? Container(
                height: kToolbarHeight, color: Colors.white,
                child: Row(
                  children: [
                    Container(width: 3),
                    IconButton(
                      icon: Icon(Icons.expand_more, color: MyColors.grey_80),
                      onPressed: () {

                      },
                    ),
                    Container(width: 5),
                    Text("Starbucks Valencia", style: MyText.medium(context).copyWith(color: MyColors.grey_80)),
                    Spacer(),
                  ],
              )) : Container(),
              Divider(color: MyColors.grey_10, thickness: 1, height: 0),
              Expanded(child: NotificationListener<DraggableScrollableNotification>(
                onNotification: (DraggableScrollableNotification n){
                  expand.value = n.extent >= n.maxExtent - 0.04;
                  return true;
                },
                child: DraggableScrollableSheet(
                  maxChildSize: 1, minChildSize: initialSize, initialChildSize: initialSize,
                  builder: (BuildContext context, myScrollController) {
                    return SingleChildScrollView(
                      clipBehavior: expand.value ? Clip.hardEdge : Clip.none,
                      controller: myScrollController,
                      child: Column(
                        children: [
                          Obx(() => Container(height: expand.value ? 0 : 80, width:double.infinity, color: Colors.indigo[500],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Starbucks Valencia", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                    Text("Coffee Shop", style: MyText.caption(context)!.copyWith(color: MyColors.grey_10))
                                  ],
                                ),
                                Align(
                                  alignment: Alignment(0.85, 0.3),
                                  child: Text("15 min", style: MyText.caption(context)!.copyWith(color: MyColors.grey_10)),
                                ),
                                Align(
                                  alignment: Alignment(0.9, 1),
                                  heightFactor: 0.5,
                                  child: FloatingActionButton(
                                    elevation: 3, heroTag: "Direction",
                                    backgroundColor: MyColors.accent, onPressed: (){},
                                    child: Icon(Icons.directions_bike),
                                  ),
                                )
                              ],
                            ),
                          )),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: <Widget>[
                                Expanded(flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(icon:Icon(Icons.phone, color: Colors.purple[500], size: 25), onPressed: () {},),
                                      Text("CALL", style: MyText.body1(context)!.copyWith(color: Colors.purple[500], fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(icon:Icon(Icons.launch, color: Colors.purple[500], size: 25), onPressed: () {},),
                                      Text("WEBSITE", style: MyText.body1(context)!.copyWith(color: Colors.purple[500], fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(icon:Icon(Icons.add_circle_outline, color: Colors.purple[500], size: 25), onPressed: () {},),
                                      Text("SAVE", style: MyText.body1(context)!.copyWith(color: Colors.purple[500], fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ),
                          Divider(color: MyColors.grey_10, thickness: 1, height: 0),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on, size: 25.0, color: Colors.purple[500]), Container(width: 20),
                                    Text("740 Valencia St, San Francisco, CA", style: MyText.body1(context)),
                                  ],
                                ), Container(height: 25),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.phone, size: 25.0, color: Colors.purple[500]), Container(width: 20),
                                    Text("(415) 349-0942", style: MyText.body1(context)),
                                  ],
                                ), Container(height: 25),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.schedule, size: 25.0, color: Colors.purple[500]), Container(width: 20),
                                    Text("Wed, 10 AM - 9 PM", style: MyText.body1(context)),
                                  ],
                                ), Container(height: 25),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.book, size: 25.0, color: Colors.purple[500]), Container(width: 20),
                                    Text("Menus", style: MyText.body1(context)),
                                  ],
                                ), Container(height: 25),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.label, size: 25.0, color: Colors.purple[500]), Container(width: 20),
                                    Text("Add Label", style: MyText.body1(context)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(color: MyColors.grey_10, thickness: 1, height: 0),
                          Container(
                            width: double.infinity, color: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("PHOTOS", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
                                Container(height: 15),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset(Img.get('image_5.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                                      Image.asset(Img.get('image_6.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                                      Image.asset(Img.get('image_7.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                                      Image.asset(Img.get('image_8.jpg'), width: 90, height: 90, fit: BoxFit.cover), Container(width : 5),
                                      Image.asset(Img.get('image_10.jpg'), width: 90, height: 90, fit: BoxFit.cover)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(color: MyColors.grey_10, thickness: 1, height: 0),
                          Container(
                            width: double.infinity, color: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DESCRIPTION", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
                                Container(height: 15),
                                Text(MyStrings.very_long_lorem_ipsum2, textAlign: TextAlign.justify, style: MyText.subhead(context)!.copyWith(
                                    color: MyColors.grey_80
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }

}