import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_music_album.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/music_album.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:get/get.dart';

class BottomSheetPlayerRoute extends StatefulWidget {

  BottomSheetPlayerRoute();

  @override
  BottomSheetPlayerState createState() => new BottomSheetPlayerState();
}

class BottomSheetPlayerState extends State<BottomSheetPlayerRoute> {

  late BuildContext _scaffoldCtx;
  bool showSheet = false;
  late List<MusicAlbum> items;

  void onItemClick(int index, MusicAlbum obj) {

  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getMusicAlbum();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCustomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          backgroundColor: Colors.white, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light
          ),
          iconTheme: IconThemeData(color: MyColors.grey_60),
          titleSpacing: 0.0,
          title: Text("Album", style: MyText.title(context)!.copyWith(
              color: MyColors.grey_60
          )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ]
      ),
      body: Builder(builder: (BuildContext ctx) {
        _scaffoldCtx = ctx;
        return GridMusicAlbum(items, onItemClick).getView();
      }),
    );
  }

  var expand = false.obs;
  void showCustomSheet() {
    showBottomSheet(context: _scaffoldCtx, elevation:10, backgroundColor: Colors.white, builder: (BuildContext bc){
      return Wrap(
        children: [
          Container(
            height: 4, color: Colors.white,
            child: LinearProgressIndicator(
              value: 0.4, valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              backgroundColor: MyColors.grey_20,
            ),
          ),
          Container(height: 60, width:double.infinity, color: Colors.indigo[500],
            child: Row(
              children: [
                Container(width: 3),
                IconButton(
                  icon: Obx(()=>Icon(expand.value ? Icons.expand_less : Icons.expand_more, color: Colors.white)),
                  onPressed: () {
                    expand.value = !expand.value;
                  },
                ),
                Container(width: 5),
                Text("Locking Up Your Symptoms", style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                Spacer(),
                Text("-1:20", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_20)),
                Container(width: 10),
                IconButton(
                  icon: Icon(Icons.pause_circle_outline_outlined, color: Colors.white),
                  onPressed: () {},
                ),
                Container(width: 10),
              ],
            ),
          ),
          Obx(()=>
            expand.value ? Column(
              children: [
                Container(height: 10),
                Container(height: 55,
                  child: Row(
                    children: [
                      Container(width: 20),
                      Text("01", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Container(width: 20),
                      Text("Proud of You", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Spacer(),
                      Text("5:05", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Container(width: 10),
                      IconButton(
                        icon: Icon(Icons.equalizer, color: MyColors.grey_40),
                        onPressed: () {},
                      ),
                      Container(width: 10),
                    ],
                  )
                ),
                Container(height: 55,
                  child: Row(
                    children: [
                      Container(width: 20),
                      Text("02", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
                      Container(width: 20),
                      Text("Locking Up Your Symptoms", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
                      Spacer(),
                      Text("3:36", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
                      Container(width: 10),
                      IconButton(
                        icon: Icon(Icons.equalizer, color: MyColors.grey_60),
                        onPressed: () {},
                      ),
                      Container(width: 10),
                    ],
                  )
                ),
                Container(height: 55,
                  child: Row(
                    children: [
                      Container(width: 20),
                      Text("03", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Container(width: 20),
                      Text("Silent Fight", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Spacer(),
                      Text("3:50", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Container(width: 10),
                      IconButton(
                        icon: Icon(Icons.equalizer, color: MyColors.grey_40),
                        onPressed: () {},
                      ),
                      Container(width: 10),
                    ],
                  )
                ),
                Container(height: 55,
                  child: Row(
                    children: [
                      Container(width: 20),
                      Text("04", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Container(width: 20),
                      Text("All The Arguments", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Spacer(),
                      Text("2:48", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                      Container(width: 10),
                      IconButton(
                        icon: Icon(Icons.equalizer, color: MyColors.grey_40),
                        onPressed: () {},
                      ),
                      Container(width: 10),
                    ],
                  )
                ),
                Container(height: 10),
              ],
            ) : Container(height: 0)
          )
        ],
      );
    });
  }

}