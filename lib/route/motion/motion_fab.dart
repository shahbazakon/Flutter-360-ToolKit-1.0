import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/image_obj.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class MotionFabRoute extends StatefulWidget {
  MotionFabRoute();

  @override
  MotionFabRouteState createState() => new MotionFabRouteState();
}

class MotionFabRouteState extends State<MotionFabRoute> {

  late BuildContext _scaffoldCtx;
  bool slow = true;

  @override
  Widget build(BuildContext context) {
    List<ImageObj> items = Dummy.getImageDate();

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Motion FAB") as PreferredSizeWidget?,
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return Container(
          alignment: Alignment.center,
          child: Text("Please click\nbutton below", textAlign: TextAlign.center, style: MyText.display1(context)!.copyWith(
            color: MyColors.grey_40,
          )),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: "fab", backgroundColor: Colors.orange[600],
        child: Icon(Icons.launch, color: Colors.white,), elevation: 3,
        onPressed: () {
          Navigator.push(_scaffoldCtx, PageRouteBuilder(
              transitionDuration: Duration(milliseconds: slow ? 900 : 1500),
              pageBuilder: (_, __, ___) => MotionFabDetails("fab", items[0]))
          );
          slow = !slow;
        },
      ),
    );
  }
}


class MotionFabDetails extends StatelessWidget {

  final String tag;
  final ImageObj obj;

  MotionFabDetails(this.tag, this.obj);

  @override
  Widget build(BuildContext context) {
    return Hero(tag: tag,
      child: Scaffold(
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
                  background: Stack(
                    children: [
                      Image.asset(Img.get("image_18.jpg"),fit: BoxFit.cover, height: 350),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                          alignment: Alignment.centerLeft,
                          height: 55, color: Colors.black.withOpacity(0.5),
                          child: Text("Store Grocery", style: MyText.title(context)!.copyWith(color: Colors.white)),
                        ),
                      ),
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
