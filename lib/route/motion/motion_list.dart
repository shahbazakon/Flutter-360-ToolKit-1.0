import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_sectioned_hero_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class MotionListRoute extends StatefulWidget {

  MotionListRoute();

  @override
  MotionListRouteState createState() => new MotionListRouteState();
}

class MotionListRouteState extends State<MotionListRoute> {

  late BuildContext _scaffoldCtx;
  bool slow = true;

  void onItemClick(int index, People obj) {
    Navigator.push(_scaffoldCtx, PageRouteBuilder(
        transitionDuration: Duration(milliseconds: slow ? 800 : 1000),
        pageBuilder: (_, __, ___) => MotionInboxDetails(index, obj))
    );
    slow = !slow;
  }

  @override
  Widget build(BuildContext context) {
    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    int sectCount = 0;
    int sectIdx = 0;
    List<String> months = Dummy.getStringsMonth();
    for (int i = 0; i < items.length / 6; i++) {
      items.insert(sectCount, new People.section(months[sectIdx], true));
      sectCount = sectCount + 5;
      sectIdx++;
    }

    return new Scaffold(
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Inbox") as PreferredSizeWidget?,
      body: new Builder(builder: (BuildContext context) {
        _scaffoldCtx = context;
        return ListSectionedHeroAdapter(items, onItemClick).getView();
      }),
    );
  }
}


class MotionInboxDetails extends StatelessWidget {

  final int index;
  final People obj;

  MotionInboxDetails(this.index, this.obj);

  @override
  Widget build(BuildContext context) {
    return Hero(tag: index.toString(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: MyColors.primary,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark
            ), titleSpacing: 0,
            iconTheme: IconThemeData(color: Colors.white),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.email),
                onPressed: () {},
              ),
              PopupMenuButton<String>(
                onSelected: (String value){
                },
                itemBuilder: (context) => [
                  PopupMenuItem(value: "Settings", child: Text("Settings"),),
                ],
              )
            ]
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      Text("Subject Title", style: MyText.title(context)!.copyWith(color: Colors.grey[800], fontWeight: FontWeight.normal)),
                      Spacer(),
                      Icon(Icons.star_border, color: MyColors.grey_60)
                    ],
                  ),
                ),
                Divider(thickness: 1, color: MyColors.grey_10, height: 0),
                Container(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(width: 15),
                      Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(obj.image),
                          ),
                          width: 50,
                          height: 50
                      ),
                      Container(width: 15),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(height: 5),
                          Text(obj.name!, style: MyText.medium(context).copyWith(color: Colors.grey[800], fontWeight: FontWeight.normal),),
                          Container(height: 2),
                          Text(obj.email!, maxLines: 2, style: MyText.subhead(context)!.copyWith(color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text(MyStrings.long_lorem_ipsum, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_80), textAlign: TextAlign.justify),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

