
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/wizard.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SteppersWizardLightRoute extends StatefulWidget {

  SteppersWizardLightRoute();

  @override
  SteppersWizardLightRouteState createState() => new SteppersWizardLightRouteState();
}


class SteppersWizardLightRouteState extends State<SteppersWizardLightRoute> {

  List<Wizard> wizardData = Dummy.getWizard();
  PageController pageController = PageController(
    initialPage: 0,
  );
  int page = 0;
  bool isLast = false;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.grey[100])),
      body: Container(
        width: double.infinity, height: double.infinity,
        child: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                PageView(
                  onPageChanged: onPageViewChange,
                  controller: pageController,
                  children: buildPageViewItem(),
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.close, color: MyColors.grey_40),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 60,
              child: Align(
                alignment: Alignment.topCenter,
                child: buildDots(context),
              ),
            ),
          ),
          Container(
            width: double.infinity, height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: MyColors.grey_10, elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)
                  )
              ),
              child: Text(isLast ? "GOT IT" : "NEXT", style: MyText.subhead(context)!.copyWith(
                  color: MyColors.grey_90, fontWeight: FontWeight.bold
              )),
              onPressed: (){
                if(isLast){ Navigator.pop(context);
                  return;
                }
                pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeOut);
              },
            ),
          )
        ]),
      ),
    );
  }

  void onPageViewChange(int _page) {
    page = _page;
    isLast = _page == wizardData.length-1;
    setState(() {});
  }

  List<Widget> buildPageViewItem(){
    List<Widget> widgets = [];
    for(Wizard wz in wizardData){
      Widget wg = Container(
        padding: EdgeInsets.all(35),
        alignment: Alignment.center,
        width: double.infinity, height: double.infinity,
        child: Wrap(
          children : <Widget>[
            Container(
              width: 280,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(35),
                        child: Image.asset(Img.get(wz.image), width: 150, height: 150),
                      ),
                      Text(wz.title, style: MyText.medium(context).copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        child: Text(wz.brief, textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(
                            color: MyColors.grey_60
                        )),
                      ),
                    ],
                  )
                ],
              )
            )
          ],
        ),
      );
      widgets.add(wg);
    }
    return widgets;
  }

  Widget buildDots(BuildContext context){
    Widget widget;

    List<Widget> dots = [];
    for(int i=0; i<wizardData.length; i++){
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? Colors.orange[400] : MyColors.grey_20,
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

