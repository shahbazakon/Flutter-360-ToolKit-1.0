import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/notification_adapter.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/data/sqlite_db.dart';
import 'package:materialx_flutter/model/notif.dart';
import 'package:materialx_flutter/utils/tools.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ListNotificationRoute extends StatefulWidget {
  @override
  ListNotificationRouteState createState() => new ListNotificationRouteState();
}

class ListNotificationRouteState extends State<ListNotificationRoute>{

  late BuildContext context;
  late BuildContext _scaffoldCtx;
  late SQLiteDb db;
  List<Notif> items = [];

  void onItemClick(int index, Notif obj) {
    showDialog(context: context, builder: (_) => DialogNotificationRoute(obj, false, onDelete));
  }

  void onDelete() {
    initData();
  }

  @override
  void initState() {
    super.initState();
    db = SQLiteDb();
    initData();
  }

  void initData(){
    db.init().then((database) {
      db.getNotifications().then((notifications){
        setState(() {
          items = notifications;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      backgroundColor: MyColors.grey_95,
      appBar: AppBar(
          backgroundColor: MyColors.grey_100_, titleSpacing: 0, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Notifications"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () { deleteConfirmDialog(context); },
            ),
          ]
      ),
      body: Builder(builder: (BuildContext context){
        _scaffoldCtx = context;
        return NotificationAdapter(items, onItemClick).getView();
      }),
    );
  }

  void deleteConfirmDialog(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Confirmation"),
          content: const Text("Are you sure want to delete all notifications ?"),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('YES'),
              onPressed: () {
                if(items.isEmpty) return;
                db.deleteAll().then((val){
                  initData();
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(_scaffoldCtx).showSnackBar(SnackBar(
                    content: Text("Notifications cleared!"),
                    duration: Duration(seconds: 3),
                  ));
                });
              },
            )
          ],
        );
      },
    );
  }

}

class DialogNotificationRoute extends StatefulWidget {

  final Notif notif;
  final bool fromNotif;
  final Function? onDelete;
  DialogNotificationRoute(this.notif, this.fromNotif, this.onDelete);

  @override
  DialogNotificationRouteState createState() => new DialogNotificationRouteState();
}

class DialogNotificationRouteState extends State<DialogNotificationRoute>{

  late Notif n;
  String buttonText = "CLOSE";
  late SQLiteDb db;

  @override
  void initState() {
    super.initState();
    n = widget.notif;
    n.isRead = true;
    if(n.type == "LINK") {
      buttonText = "OPEN";
    }
    db = SQLiteDb();
    db.init().then((database) {
      db.updateNotification(n);
    });
  }

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(height: 5),
              Row(
                children: <Widget>[
                  Container(width: 15),
                  Image.asset(
                    Img.get('logo_small_round.png'),
                    color: MyColors.primary,
                    width: 25, height: 25,
                  ),
                  Container(width: 10),
                  Text(widget.fromNotif ? "MaterialX" : "Notification", style: MyText.title(context)!.copyWith(color: MyColors.primary)),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close, color: MyColors.primary),
                    onPressed: (){ Navigator.pop(context); },
                  ),
                ],
              ),
              n.type == "IMAGE" ? Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                color: MyColors.grey_80,
                width: double.infinity, height: 180,
                child: Image.network(n.image!, fit: BoxFit.contain),
              ) : Container(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5
                ),
                width : double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        n.type == "NORMAL" ? Container() :
                        Container(
                          color: MyColors.grey_10,
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          child: Text(n.type!, style: MyText.caption(context)!.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.w500)),
                        ),
                        Spacer(),
                        Text(Tools.getFormattedDateShort(n.createdAt!), style: MyText.body1(context)!.copyWith(color: MyColors.grey_40))
                      ],
                    ),
                    Container(height: 5),
                    Text(n.title!, style: MyText.title(context)!.copyWith(color: MyColors.grey_80)),
                    Container(height: 5),
                    Text(n.content!, style: MyText.subhead(context)!.copyWith(color: MyColors.grey_60)),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  widget.fromNotif ? Container() :
                  ButtonTheme(
                    minWidth: 10,
                    child: TextButton(
                      child: Text("DELETE", style: TextStyle(color: MyColors.grey_60)),
                      style: TextButton.styleFrom(primary: Colors.transparent),
                      onPressed: (){
                        db.deleteNotification(widget.notif.id).then((value){
                          onDeleteClicked();
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 10,
                    child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.transparent),
                      child: Text(buttonText, style: TextStyle(color: MyColors.primary)),
                      onPressed: (){
                        if(n.type == "LINK"){
                          Tools.directUrl(n.link!);
                        } else {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                  Container(width: 10)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void onDeleteClicked(){
    if(widget.onDelete == null) return;
    widget.onDelete!();
  }
}



