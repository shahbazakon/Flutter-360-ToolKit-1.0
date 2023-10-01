// import 'dart:convert';
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:materialx_flutter/model/notif.dart';
// import 'package:materialx_flutter/utils/notification_route.dart';
//
// class PushNotification {
//   static const String CHANNEL_ID_NAME = "Default";
//   static Random random = new Random();
//
//   BuildContext? context;
//   late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
//
//   PushNotification.init(this.context) {
//     flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
//     var android = new AndroidInitializationSettings('app_icon');
//     var iOS = IOSInitializationSettings();
//     var initSettings = new InitializationSettings(android: android, iOS: iOS);
//     flutterLocalNotificationsPlugin.initialize(initSettings,
//         onSelectNotification: _onSelectNotification);
//   }
//
//   Future _onSelectNotification(String? payload) async {
//     await Navigator.push(context!,
//         MaterialPageRoute(builder: (BuildContext context) {
//       Notif? notif = getNotifObject(payload!);
//       return notif == null
//           ? ListNotificationRoute()
//           : DialogNotificationRoute(notif, true, null);
//     }));
//   }
//
//   showNotification(Notif notif) async {
//     var android = new AndroidNotificationDetails(
//       CHANNEL_ID_NAME,
//       CHANNEL_ID_NAME,
//       priority: Priority.high,
//       importance: Importance.max,
//     );
//     var iOS = new IOSNotificationDetails();
//     var platform = new NotificationDetails(android: android, iOS: iOS);
//     await flutterLocalNotificationsPlugin.show(
//         random.nextInt(1000), notif.title, notif.content, platform,
//         payload: getNotifJson(notif));
//   }
//
//   Notif? getNotifObject(String json) {
//     try {
//       Map<String, dynamic> map = jsonDecode(json);
//       Notif notif = Notif.fromJson(map);
//       return notif;
//     } catch (error) {
//       return null;
//     }
//   }
//
//   String getNotifJson(Notif obj) {
//     String json = jsonEncode(obj);
//     return json;
//   }
// }
