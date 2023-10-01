import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/chat_bbm_adapter.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/message.dart';
import 'package:materialx_flutter/utils/tools.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ChatBBMRoute extends StatefulWidget {

  ChatBBMRoute();

  @override
  ChatBBMRouteState createState() => new ChatBBMRouteState();
}


class ChatBBMRouteState extends State<ChatBBMRoute> {

  bool showSend = false;
  final TextEditingController inputController = new TextEditingController();
  List<Message> items = [];
  late ChatBBMAdapter adapter;

  @override
  void initState() {
    super.initState();
    items.add(Message.time(items.length, "Hello!", true, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
    items.add(Message.time(items.length, "Hai..", false, items.length % 5 == 0, Tools.getFormattedTimeEvent(DateTime.now().millisecondsSinceEpoch)));
  }

  @override
  Widget build(BuildContext context) {
    adapter = ChatBBMAdapter(context, items, onItemClick);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xff0192CC), systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Jeff", style: MyText.medium(context).copyWith(
                  color: Colors.white)
              ),
              Container(height: 2),
              Text("Traveling today. BBM me.", style: MyText.body1(context)!.copyWith(
                  color: MyColors.grey_10)
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.call), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person_add), onPressed: () {}),
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
            Divider(height: 0, thickness: 1),
            Row(
              children: <Widget>[
                Container(width: 10),
                Expanded(
                  child: TextField(
                    controller: inputController,
                    maxLines: 1, minLines: 1,
                    keyboardType: TextInputType.multiline,
                    decoration: new InputDecoration.collapsed(
                        hintText: 'Write a message...'
                    ),
                    onChanged: (term){
                      setState(() { showSend = (term.length > 0); });
                    },
                  ),
                ),
                IconButton(icon: Icon(Icons.sentiment_satisfied, color: MyColors.grey_40, size: 20), onPressed: () {}),
                IconButton(icon: Icon(Icons.send, color: MyColors.grey_40, size: 20), onPressed: () {
                  if(showSend) sendMessage();
                }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.crop_original, color: MyColors.grey_40, size: 20), onPressed: () {}),
                IconButton(icon: Icon(Icons.my_location, color: MyColors.grey_40, size: 20), onPressed: () {}),
                IconButton(icon: Icon(Icons.photo_camera, color: MyColors.grey_40, size: 20), onPressed: () {}),
                IconButton(icon: Icon(Icons.insert_drive_file, color: MyColors.grey_40, size: 20), onPressed: () {}),
                IconButton(icon: Icon(Icons.arrow_forward_ios, color: MyColors.grey_40, size: 20), onPressed: () {}),
              ],
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

