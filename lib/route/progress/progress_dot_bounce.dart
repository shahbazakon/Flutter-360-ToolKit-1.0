import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/my_files_adapter.dart';
import 'package:materialx_flutter/model/folder_file.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';
import 'package:materialx_flutter/widget/progress_dot.dart';

class ProgressDotBounceRoute extends StatefulWidget {

  ProgressDotBounceRoute();

  @override
  ProgressDotBounceRouteState createState() => new ProgressDotBounceRouteState();
}


class ProgressDotBounceRouteState extends State<ProgressDotBounceRoute> {

  late BuildContext context;
  List<FolderFile> items = [];
  bool finishLoading = false;

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ), backgroundColor: Colors.pink[500],
        bottom: PreferredSize(
          child: Container(
            padding: EdgeInsets.fromLTRB(77, 0, 0, 25), alignment: Alignment.bottomLeft,
            constraints: BoxConstraints.expand(height: 70),
            child: Text("My files", style: MyText.headline(context)!.copyWith(color: Colors.white)),
          ),
          preferredSize: Size.fromHeight(70)
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
              PopupMenuItem(value: "Settings", child: Text("Settings"),),
            ],
          )
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(mini: true, child: Icon(Icons.add),
        onPressed: (){}, backgroundColor: Colors.yellow[700],
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
        AnimatedOpacity(
          opacity: finishLoading ? 0.0 : 1.0,
          duration: Duration(milliseconds: 500),
          child: buildLoading(context),
        ),
      ],
    );
  }

  Widget buildLoading(BuildContext context){
    return Align(
      child: Container(
        width: 105,
        height: 100,
        alignment: Alignment.center,
        child: WidgetDotBounce(color: Colors.pink[400], size: 20.0),
      ),
      alignment: Alignment.center,
    );
  }

  void onItemClick(int index, FolderFile obj) {
    MyToast.show(obj.name, context, duration: MyToast.LENGTH_SHORT);
  }

  Widget buildList(BuildContext context){
    return MyFilesAdapter(items, onItemClick).getView();
  }

  void delayShowingList(){
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        finishLoading = true;
      });
    });
  }

}

