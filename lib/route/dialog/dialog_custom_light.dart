
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_basic_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/model/people.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class DialogCustomLightRoute extends StatefulWidget {

  DialogCustomLightRoute();

  @override
  DialogCustomLightRouteState createState() => new DialogCustomLightRouteState();
}

class DialogCustomLightRouteState extends State<DialogCustomLightRoute> {

  late BuildContext context;
  List<People>? items;
  void onItemClick(int index, People obj) {
    showDialog(context: context, builder: (context) => CustomEventDialog(obj));
  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
    items!.addAll(Dummy.getPeopleData());
    items!.addAll(Dummy.getPeopleData());

    Future.delayed(Duration(seconds: 1), () {
      showDialog(context: context, builder: (context) => CustomEventDialog(items![0]));
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Custom Light", style: TextStyle(color: MyColors.grey_60)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: MyColors.grey_60),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: MyColors.grey_60),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: MyColors.grey_60),
              onPressed: () {},
            ),// overflow menu
          ]
      ),
      body: ListBasicAdapter(items, onItemClick).getView(),
    );
  }
}


class CustomEventDialog extends StatefulWidget {

  final People obj;

  CustomEventDialog(this.obj);

  @override
  CustomEventDialogState createState() => new CustomEventDialogState();
}

class CustomEventDialogState extends State<CustomEventDialog>{

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 160,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: MyColors.grey_20,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Container(height: 20),
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: AssetImage(widget.obj.image),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(widget.obj.name!, textAlign : TextAlign.center, style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                    Container(height: 5),
                    Text(MyStrings.short_lorem_ipsum, textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
                    Container(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[300],
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)
                        ),
                      ),
                      child: Text("FOLLOW", style: TextStyle(color: Colors.white)),
                      onPressed: (){
                        MyToast.show("FOLLOW clicked", context);
                      },
                    ),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text("35.7K", style: MyText.title(context)!.copyWith(
                                  color: MyColors.grey_80, fontWeight: FontWeight.bold
                              )),
                              Container(height: 5),
                              Text("Following", style: MyText.medium(context).copyWith(color: Colors.grey[500]))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text("215", style: MyText.title(context)!.copyWith(
                                  color: MyColors.grey_80, fontWeight: FontWeight.bold
                              )),
                              Container(height: 5),
                              Text("Followers", style: MyText.medium(context).copyWith(color: Colors.grey[500]))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}



