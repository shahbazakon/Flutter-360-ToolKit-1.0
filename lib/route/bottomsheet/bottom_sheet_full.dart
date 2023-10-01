import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DragabbleScrollableSheetDemo extends StatefulWidget {
  @override
  _DragabbleScrollableSheetDemoState createState() =>
      _DragabbleScrollableSheetDemoState();
}

class _DragabbleScrollableSheetDemoState
    extends State<DragabbleScrollableSheetDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: const Text('DraggableScrollableSheet'),
        ),
        body: Container(
          child: DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (BuildContext context, myscrollController) {
              return Container(
                color: Colors.tealAccent[200],
                child: ListView.builder(
                  controller: myscrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(
                          'Dish $index',
                          style: TextStyle(color: Colors.black54),
                        ));
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}