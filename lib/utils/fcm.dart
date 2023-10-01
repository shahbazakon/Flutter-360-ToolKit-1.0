import 'package:device_info/device_info.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/shared_pref.dart';
import 'package:materialx_flutter/data/sqlite_db.dart';
import 'package:materialx_flutter/model/device_info.dart';
import 'package:materialx_flutter/model/notif.dart';
import 'package:materialx_flutter/utils/rest_api.dart';
import 'package:package_info/package_info.dart';
import 'package:sqflite/sqflite.dart';

class Fcm {
  BuildContext? context;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  String? token = '';
  static const String TOPIC = 'ALL-DEVICE-FLUTTER';
  bool isSubscribed = false;
  // late PushNotification notif;

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    Notif n = getNotifModel(message)!;
    // await PushNotification.init(null).showNotification(n);
  }

  static void onBackgroundMessage() async {
    FirebaseApp app = await Firebase.initializeApp();
    print('Initialized default app $app from Android resource');
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Fcm.configure(BuildContext context) {
    Firebase.initializeApp();
    // notif = PushNotification.init(context);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      onReceiveMessage(message);
    });

    debugPrint("Obtain firebase token");
    _firebaseMessaging.getToken().then((String? token) {
      debugPrint("Finish obtain token");
      this.token = token;
      SharedPref.setFcmRegId(token!);

      Fcm.registerDeviceToServer();
    });
  }

  void onReceiveMessage(RemoteMessage message) {
    try {
      Notif n = getNotifModel(message)!;
      // notif.showNotification(n);
    } catch (error) {
      debugPrint("onMessage : error: $error");
    }
  }

  void subscribe() {
    _firebaseMessaging.subscribeToTopic(TOPIC);
  }

  static Future<void> registerDeviceToServer() async {
    DeviceInfo info = DeviceInfo();

    info.device = "unknown Android";
    info.osVersion = "unknown version";
    info.serial = "unknown ID";

    try {
      DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
      var build = await deviceInfoPlugin.androidInfo;
      info.device = build.model;
      info.osVersion = build.version.release;
      info.serial = build.androidId;

      var package = await PackageInfo.fromPlatform();
      info.appVersion = package.version;

      SharedPref.getFcmRegId().then((regId) {
        info.regId = regId;
        if (regId == null) return;
        RestAPI().registerDevice(info).then((value) {
          debugPrint('registerDevice : Success');
        });
      });
    } catch (error) {
      debugPrint('Failed device info $error');
    }
  }
}

// Future<dynamic> onBackgroundMessageHandler(Map<String, dynamic> message) async{
//   Notif n = getNotifModel(message);
//   await PushNotification.init(null).showNotification(n);
//   // Or do other work.
// }

Notif? getNotifModel(RemoteMessage message) {
  try {
    var data = message.data;
    String? title = data['title'];
    String? content = data['content'];
    String? type = data['type'];
    String? image = type == "IMAGE" ? data['image'] : "";
    String? link = type == "LINK" ? data['link'] : "";

    Notif n = Notif(title, content);
    n.type = type;
    n.image = image;
    n.link = link;

    SQLiteDb dbHelper = SQLiteDb();
    final Future<Database> dbFuture = dbHelper.init();
    dbFuture.then((database) {
      dbHelper.insertNotification(n);
    });

    return n;
  } catch (error) {
    return null;
  }
}
