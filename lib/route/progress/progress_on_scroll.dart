import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/grid_basic_infinite_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class ProgressOnScrollRoute extends StatefulWidget {

  ProgressOnScrollRoute();

  @override
  ProgressOnScrollRouteState createState() => new ProgressOnScrollRouteState();
}


class ProgressOnScrollRouteState extends State<ProgressOnScrollRoute> {
  List<String>? items;
  late GridBasicInfiniteAdapter adapter;
  bool onLoading = false;

  @override
  void initState() {
    super.initState();
    items = Dummy.getNatureImages(10);
    adapter = GridBasicInfiniteAdapter(items, onItemClick);
    adapter.setOnLoadMore((int count){
      if(!onLoading){
        delayLoadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
        bottom: PreferredSize(
          child: Container(
            padding: EdgeInsets.fromLTRB(77, 0, 0, 20),
            alignment: Alignment.bottomLeft,
            constraints: BoxConstraints.expand(height: 50),
            child: Text("Photos", style: MyText.headline(context)!.copyWith(color: Colors.white)),
          ),
          preferredSize: Size.fromHeight(50)
        ),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {
          Navigator.pop(context);
        }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(mini: true, child: Icon(Icons.add),onPressed: (){

      }),
      body: adapter.getView(),
    );
  }

  void onItemClick(int index, String obj) {
    MyToast.show(obj, context, duration: MyToast.LENGTH_SHORT);
  }

  void delayLoadMore(){
    setState(() {
      adapter.setLoading();
      onLoading = true;
    });
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        onLoading = false;
        adapter.setLoaded();
        adapter.addItems(Dummy.getNatureImages(6));
      });
    });
  }

}

