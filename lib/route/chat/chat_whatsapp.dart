import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/chat_whatsapp_adapter.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/message.dart';
import 'package:materialx_flutter/utils/tools.dart';
import 'package:materialx_flutter/widget/circle_image.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChatWhatsAppRoute extends StatefulWidget {

  ChatWhatsAppRoute();

  @override
  ChatWhatsAppRouteState createState() => new ChatWhatsAppRouteState();
}


class ChatWhatsAppRouteState extends State<ChatWhatsAppRoute> {

  bool showSend = false;
  final TextEditingController inputController = new TextEditingController();
  List<Message> items = [];
  late ChatWhatsAppAdapter adapter;

  @override
  void initState() {
    super.initState();
    items.add(Message.time(items.length, "Hai..", false, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
    items.add(Message.time(items.length, "Hello!", true, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
  }

  @override
  Widget build(BuildContext context) {
    adapter = ChatWhatsAppAdapter(context, items, onItemClick);

    return Scaffold(
      backgroundColor: Color(0xffE8E9E4),
      appBar: AppBar(
          backgroundColor: Color(0xff075E54), systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Row(
            children: <Widget>[
              CircleImage(
                imageProvider: AssetImage(Img.get('photo_male_7.jpg')), size: 40,
              ),
              Container(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Roberts", style: MyText.medium(context).copyWith(
                      color: Colors.white)
                  ),
                  Container(height: 2),
                  Text("Online", style: MyText.caption(context)!.copyWith(
                      color: MyColors.grey_10)
                  ),
                ],
              )
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.attach_file),
              onPressed: () {},
            ),
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
      body: Container(
        width: double.infinity, height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: adapter.getView(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25),),
                      elevation: 1,
                      child: Row(
                        children: <Widget>[
                          IconButton(icon: const Icon(Icons.sentiment_satisfied, color: MyColors.grey_40, size: 25), onPressed: () {}),
                          Expanded(
                            child: TextField(
                              controller: inputController, maxLines: 1, minLines: 1,
                              keyboardType: TextInputType.multiline,
                              decoration: new InputDecoration.collapsed(
                                  hintText: 'Write a message'
                              ),
                              onChanged: (term){
                                setState(() { showSend = (term.length > 0); });
                              },
                            ),
                          ),
                          IconButton(icon: Icon(Icons.photo_camera, color: Color(0xff00897B), size: 25), onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                  FloatingActionButton(heroTag: "fab1", elevation: 1, mini: true,
                    backgroundColor: Color(0xff00897B), child: Icon(showSend ? Icons.send : Icons.mic, color: Colors.white),
                    onPressed: () {
                      if(showSend) sendMessage();
                    },
                  ),
                  Container(width: 5)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemClick(int index, String obj) { }

  void sendMessage(){
    String message = inputController.text;
    inputController.clear();
    showSend = false;
    setState(() {
      adapter.insertSingleItem(
          Message.time(adapter.getItemCount(), message, true,
              adapter.getItemCount() % 5 == 0,
              Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)
          )
      );
    });
    generateReply(message);
  }

  void generateReply(String msg){
    Timer(Duration(seconds: 1), () {
      setState(() {
        adapter.insertSingleItem(
            Message.time(adapter.getItemCount(), msg, false, adapter.getItemCount() % 5 == 0,
                Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)
            )
        );
      });
    });
  }
}

