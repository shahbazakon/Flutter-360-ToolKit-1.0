import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/my_files_adapter.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/folder_file.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ProgressLinearTopRoute extends StatefulWidget {

  ProgressLinearTopRoute();

  @override
  ProgressLinearTopRouteState createState() => new ProgressLinearTopRouteState();
}


class ProgressLinearTopRouteState extends State<ProgressLinearTopRoute> {

  late BuildContext context;
  List<FolderFile> items = [];
  bool finishLoading = false;
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    items.add(new FolderFile.section("Folders"));  // add section

    items.add(new FolderFile("Photos", "Jan 9, 2014", Icons.folder, true));
    items.add(new FolderFile("Recipes", "Feb 17, 2014", Icons.folder, true));
    items.add(new FolderFile("Work", "May 28, 2014", Icons.folder, true));

    items.add(new FolderFile.section("Files"));   // add section

    items.add(new FolderFile("Vacation itinerary", "Jan 20, 2014", Icons.insert_drive_file, false));
    items.add(new FolderFile("Kitchen Remodel", "Jan 10, 2014", Icons.insert_drive_file, false));
    items.add(new FolderFile("To Do Note", "Des 25, 2013", Icons.insert_drive_file, false));

    items.add(new FolderFile.section(""));   // add section
    delayShowingList();

  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        iconTheme: IconThemeData(color: MyColors.primary),
        title: Text(" My Files", style: MyText.title(context)!.copyWith(
          color: MyColors.primary
        )),
        flexibleSpace: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container( height: 3,
                child: finishLoading ? Container() : LinearProgressIndicator(
                  value: progressValue,
                  valueColor: AlwaysStoppedAnimation<Color>(MyColors.primaryLight),
                  backgroundColor: Colors.black.withOpacity(0.1),
                ),
              ),
            )
          ],
        ),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.refresh), onPressed: () {
              setState(() {
                finishLoading = false;
              });
              delayShowingList();
            }),// overflow menu
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ]
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context){
    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          opacity: finishLoading ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: buildList(context),
        ),
      ],
    );
  }

  void onItemClick(int index, FolderFile obj) {
    MyToast.show(obj.name, context, duration: MyToast.LENGTH_SHORT);
  }

  Widget buildList(BuildContext context){
    return MyFilesAdapter(items, onItemClick).getView();
  }

  void delayShowingList(){
    progressValue = 0.0;
    const oneSec = const Duration(milliseconds: 300);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        progressValue += 0.2;
        // we "finish" downloading here
        if (progressValue > 1.0) {
          progressValue = 0.0;
          finishLoading = true;
          t.cancel();
        }
      });
    });
  }

}

