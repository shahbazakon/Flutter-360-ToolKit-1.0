import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/included/include_releases_content.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class SearchStoreRoute extends StatefulWidget {

  SearchStoreRoute();

  @override
  SearchStoreRouteState createState() => new SearchStoreRouteState();
}


class SearchStoreRouteState extends State<SearchStoreRoute> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;
  bool finishLoading = true;
  final TextEditingController inputController = new TextEditingController();

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  void onBackPress(){
    if(Navigator.of(context).canPop()){
      Navigator.of(context).pop();
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
          return <Widget>[
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark
              ),
              flexibleSpace: Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(2),),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: EdgeInsets.fromLTRB(8, 32, 8, 0), elevation: 1,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      splashColor: Colors.grey[600], highlightColor: Colors.grey[600], onTap: onBackPress,
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.search, color: Colors.grey[600],),
                      ),
                    ),
                    Expanded(
                      child: TextField(maxLines: 1,
                        controller: inputController,
                        style: TextStyle(color: Colors.grey[600], fontSize: 18),
                        keyboardType: TextInputType.text,
                        onSubmitted: (term){
                          setState(() {
                            finishLoading = false;
                          });
                          delayShowingContent();
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                    IconButton(icon : Icon(Icons.close, color: Colors.grey[600]), onPressed: (){
                      inputController.clear();
                      setState(() {});
                    }),
                  ],
                ),
              ),
              pinned: true, floating: false,
              backgroundColor: Colors.blueGrey[600],
              automaticallyImplyLeading: false,
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab, indicatorWeight: 4,
                labelStyle: MyText.body2(context)!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                unselectedLabelColor: Colors.grey[400],
                tabs: [
                  Tab(text: "MUSIC"),
                  Tab(text: "MOVIE"),
                  Tab(text: "BOOKS"),
                  Tab(text: "GAMES"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            buildBody(context),
            buildBody(context),
            buildBody(context),
            buildBody(context),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context){
    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          opacity: finishLoading ? 1.0 : 0.0,
          duration: Duration(milliseconds: 100),
          child: IncludeReleasesContent.get(context),
        ),
        AnimatedOpacity(
          opacity: finishLoading ? 0.0 : 1.0,
          duration: Duration(milliseconds: 100),
          child: buildLoading(context),
        ),
      ],
    );
  }

  Widget buildLoading(BuildContext context){
    return Align(
      child: Container(
        width: 80,
        height: 80,
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
      alignment: Alignment.center,
    );
  }

  void delayShowingContent(){
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        finishLoading = true;
      });
    });
  }

}