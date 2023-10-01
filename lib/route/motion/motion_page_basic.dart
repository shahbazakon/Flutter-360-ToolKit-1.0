import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_album_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/image_obj.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class MotionPageBasicRoute extends StatefulWidget {
  MotionPageBasicRoute();

  @override
  MotionPageBasicRouteState createState() => new MotionPageBasicRouteState();
}

class MotionPageBasicRouteState extends State<MotionPageBasicRoute> {

  late BuildContext _scaffoldCtx;
  bool slow = true;

  void onItemClick(int index, ImageObj obj) {
    Navigator.push(_scaffoldCtx, PageRouteBuilder(
      transitionDuration: Duration(milliseconds: slow ? 800 : 1000),
      pageBuilder: (_, __, ___) => MotionPageDetails(index, obj))
    );
    slow = !slow;
  }

  @override
  Widget build(BuildContext context) {
    List<ImageObj> items = Dummy.getImageDate();
    items.addAll(Dummy.getImageDate());

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Album", light: true) as PreferredSizeWidget?,
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return GridAlbumAdapter(items, onItemClick).getView();
      }),
    );
  }
}

class MotionPageDetails extends StatelessWidget {

  final int index;
  final ImageObj obj;

  MotionPageDetails(this.index, this.obj);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0, systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              floating: false, pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: index.toString(),
                  child: Stack(
                    children: [
                      Image.asset(Img.get(obj.image),fit: BoxFit.cover, height: 350),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                          alignment: Alignment.centerLeft,
                          height: 55, color: Colors.black.withOpacity(0.5),
                          child: Text(obj.name, style: MyText.title(context)!.copyWith(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
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
    );
  }
}
