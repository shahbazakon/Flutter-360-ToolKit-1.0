import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_music_card_album.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/music_album.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class MotionCardRoute extends StatefulWidget {
  MotionCardRoute();

  @override
  MotionCardRouteState createState() => new MotionCardRouteState();
}

class MotionCardRouteState extends State<MotionCardRoute> {

  late BuildContext _scaffoldCtx;
  bool slow = true;

  void onItemClick(int index, MusicAlbum obj) {
    Navigator.push(_scaffoldCtx, PageRouteBuilder(
      transitionDuration: Duration(milliseconds: slow ? 500 : 1000),
      pageBuilder: (_, __, ___) => MotionCardDetails(index, obj))
    );
    slow = !slow;
  }

  @override
  Widget build(BuildContext context) {
    List<MusicAlbum> items = Dummy.getMusicAlbum();

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Album", light: true) as PreferredSizeWidget?,
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return GridMusicCardAlbum(items, onItemClick).getView();
      }),
    );
  }
}

class MotionCardDetails extends StatelessWidget {

  final int index;
  final MusicAlbum obj;

  MotionCardDetails(this.index, this.obj);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: index.toString(),
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.deepPurple[800],
                expandedHeight: 400.0, systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.dark
                ),
                floating: false, pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Stack(
                    children: [
                      Image.asset(Img.get(obj.image),fit: BoxFit.cover, height: 380),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                          alignment: Alignment.centerLeft,
                          height: 130, color: Colors.deepPurple[800],
                          child: Stack(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(obj.name, style: MyText.display1(context)!.copyWith(color: Colors.white)),
                                  Container(height: 5),
                                  Text(obj.brief, style: MyText.subhead(context)!.copyWith(color: Colors.white)),
                                ],
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                transform: Matrix4.translationValues(0.0, -25.0, 0.0),
                                child: FloatingActionButton(
                                  heroTag: null, backgroundColor: Colors.amber[700], elevation: 1,
                                  child: Icon(Icons.play_arrow, color: Colors.white,),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {Navigator.pop(context); },
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search), onPressed: () {},
                  ),// overflow menu
                  IconButton(
                    icon: Icon(Icons.more_vert), onPressed: () {},
                  ),
                ],
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(MyStrings.very_long_lorem_ipsum, textAlign: TextAlign.justify, style: MyText.medium(context).copyWith(
                    color: MyColors.grey_60,
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
