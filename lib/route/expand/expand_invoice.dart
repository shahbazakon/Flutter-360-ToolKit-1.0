import 'dart:math' as math;


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ExpandInvoiceRoute extends StatefulWidget {

  ExpandInvoiceRoute();

  @override
  ExpandInvoiceRouteState createState() => new ExpandInvoiceRouteState();
}

class ExpandInvoiceRouteState extends State<ExpandInvoiceRoute>
    with TickerProviderStateMixin {

  bool expand1 = false, expand2 = false, expand3 = false;
  late AnimationController controller1, controller2, controller3;
  late Animation<double> animation1, animation1View;
  late Animation<double> animation2, animation2View;
  late Animation<double> animation3, animation3View;

  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);
    controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);
    controller3 = AnimationController(vsync: this, duration: Duration(milliseconds: 200),);

    animation1 = Tween(begin: 0.0, end: 180.0).animate(controller1);
    animation1View = CurvedAnimation(parent: controller1, curve: Curves.linear);

    animation2 = Tween(begin: 0.0, end: 180.0).animate(controller2);
    animation2View = CurvedAnimation(parent: controller2, curve: Curves.linear);

    animation3 = Tween(begin: 0.0, end: 180.0).animate(controller3);
    animation3View = CurvedAnimation(parent: controller3, curve: Curves.linear);

    controller1.addListener(() { setState(() {}); });
    controller2.addListener(() { setState(() {}); });
    controller3.addListener(() { setState(() {}); });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
       child: Column(
         children: <Widget>[
           AppBar(
               elevation: 0, systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.dark
                ),
               backgroundColor: Colors.teal[600],
               leading: IconButton(
                 icon: const Icon(Icons.arrow_back),
                 onPressed: () {
                   Navigator.pop(context);
                 },
               ),
               actions: <Widget>[
                 PopupMenuButton<String>(
                   itemBuilder: (context) => [
                     PopupMenuItem(
                       value: "Settings",
                       child: Text("Settings"),
                     ),
                   ],
                 )
               ]
           ),
           Container(
             alignment: Alignment.topLeft,
             width: double.infinity,
             padding: EdgeInsets.all(25),
             color: Colors.teal[600],
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text("\$ 2026.24", style: MyText.display2(context)!.copyWith(color: Colors.white)),
                 Text("TOTAL PRICE", style: MyText.body1(context)!.copyWith(color: Colors.white)),
                 Container(height: 10),
                 Row(
                   children: <Widget>[
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text("INV-ZT45C", style: MyText.headline(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                         Text("Purchase Code", style: MyText.body1(context)!.copyWith(color: Colors.white)),
                       ],
                     ),
                     Spacer(),
                     FloatingActionButton(
                       elevation: 0,
                       backgroundColor: Colors.white,
                       mini: true,
                       onPressed: (){},
                       child: Icon( Icons.description, size: 25.0, color: Colors.teal[600] ),
                     )
                   ],
                 )
               ],
             ),
           ),
           Container(
             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Icon(Icons.event, size: 25.0, color: Colors.grey),
                 Container(width: 20),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Container(height: 5),
                     Text("Invoice Date", style: MyText.title(context)!.copyWith(color: Colors.grey, fontWeight: FontWeight.w400)),
                     Container(height: 20),
                     Text("2.30 PM, 22 March 2016", style: MyText.subhead(context)!.copyWith(color: Colors.grey[800], fontWeight: FontWeight.bold)),
                   ],
                 ),
               ],
             ),
           ),
           Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
           Container(
             padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
             child: Row(
               children: <Widget>[
                 Container(width: 15),
                 Icon(Icons.apps, size: 25.0, color: Colors.grey),
                 Container(width: 20),
                 Text("Items (s)", style: MyText.title(context)!.copyWith(color: Colors.grey, fontWeight: FontWeight.w400)),
                 Spacer(),
                 Transform.rotate(
                   angle: animation1.value * math.pi / 180,
                   child: IconButton(
                     padding: EdgeInsets.all(0),
                     icon: Icon(Icons.arrow_drop_down, color: Colors.grey,),
                     onPressed: (){togglePanel1();},
                   ),
                 ),
               ],
             ),
           ),
           SizeTransition(
             sizeFactor: animation1View,
             child: Container(
               child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Container(width: 65), Text("Web Design"), Spacer(), Text("\$ 455.62"), Container(width: 20),
                     ],
                   ),
                   Container(height: 5),
                   Row(
                     children: <Widget>[
                       Container(width: 65), Text("E-Book Design"), Spacer(), Text("\$ 278.12"), Container(width: 20),
                     ],
                   ),
                   Container(height: 5),
                   Row(
                     children: <Widget>[
                       Container(width: 65), Text("Hosting Plan"), Spacer(), Text("\$ 719.00"), Container(width: 20),
                     ],
                   ),
                   Container(height: 5),
                   Row(
                     children: <Widget>[
                       Container(width: 65), Text("Brochure Design"), Spacer(), Text("\$ 573.50"), Container(width: 20),
                     ],
                   ),
                   Container(height: 10),
                   Row(
                     children: <Widget>[
                       Container(width: 65),
                       Text("Total", style: TextStyle(fontWeight: FontWeight.bold)), Spacer(),
                       Text("\$ 2.026.24", style: TextStyle(fontWeight: FontWeight.bold)), Container(width: 20),
                     ],
                   ),
                   Container(height: 15),
                 ],
               ),
             ),
           ),
           Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
           Container(
             padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
             child: Row(
               children: <Widget>[
                 Container(width: 15),
                 Icon(Icons.insert_drive_file, size: 25.0, color: Colors.grey),
                 Container(width: 20),
                 Column(
                   children: <Widget>[
                     Text("Description", style: MyText.title(context)!.copyWith(color: Colors.grey, fontWeight: FontWeight.w400)),
                   ],
                 ),
                 Spacer(),
                 Transform.rotate(
                   angle: animation1.value * math.pi / 180,
                   child: IconButton(
                     padding: EdgeInsets.all(0),
                     icon: Icon(Icons.arrow_drop_down, color: Colors.grey,),
                     onPressed: (){togglePanel2();},
                   ),
                 ),
               ],
             ),
           ),
           SizeTransition(
             sizeFactor: animation2View,
             child: Container(
               child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Container(width: 65),
                       Flexible(flex: 1, child: Text(MyStrings.lorem_ipsum)),
                       Container(width: 20)
                     ],
                   ),
                   Container(height: 15),
                 ],
               ),
             ),
           ),
           Divider(color: Colors.grey[200], height: 0, thickness: 0.5),
           Container(
             padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
             child: Row(
               children: <Widget>[
                 Container(width: 15),
                 Icon(Icons.location_on, size: 25.0, color: Colors.grey),
                 Container(width: 20),
                 Column(
                   children: <Widget>[
                     Text("Address", style: MyText.title(context)!.copyWith(color: Colors.grey, fontWeight: FontWeight.w400)),
                   ],
                 ),
                 Spacer(),
                 Transform.rotate(
                   angle: animation1.value * math.pi / 180,
                   child: IconButton(
                     padding: EdgeInsets.all(0),
                     icon: Icon(Icons.arrow_drop_down, color: Colors.grey,),
                     onPressed: (){togglePanel3();},
                   ),
                 ),
               ],
             ),
           ),
           SizeTransition(
             sizeFactor: animation3View,
             child: Container(
               child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Container(width: 65),
                       Flexible(flex: 1, child: Text(MyStrings.invoice_address)),
                       Container(width: 20)
                     ],
                   ),
                   Container(height: 15),
                 ],
               ),
             ),
           ),
         ],
       ),
      )
    );
  }


  void togglePanel1(){
    if(!expand1){
      controller1.forward();
    } else {
      controller1.reverse();
    }
    expand1 = !expand1;
  }

  void togglePanel2(){
    if(!expand2){
      controller2.forward();
    } else {
      controller2.reverse();
    }
    expand2 = !expand2;
  }

  void togglePanel3(){
    if(!expand3){
      controller3.forward();
    } else {
      controller3.reverse();
    }
    expand3 = !expand3;
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }

}
