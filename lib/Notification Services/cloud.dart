import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class CloudService{

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  FlutterLocalNotificationsPlugin _flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  void initializeCloudNotificationViaLocalNotificationPackage()async{

    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );
    await _flutterLocalNotificationPlugin.initialize(initializationSettings);

  }



  void showSimpleCloudNotification(String title , String body){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Cloud Simple Notification",
      channelShowBadge: true,
      channelDescription: "This Channel is for Cloud Based Simple Notification Channel",
      importance: Importance.max,
      priority: Priority.max,

    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    _flutterLocalNotificationPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        "Simple $title",
        body,
        notificationDetails
    );

  }

  void showIconCloudNotification(String title , String body ){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
      "Cloud Simple Notification",
      channelShowBadge: true,
      channelDescription: "This Channel is for Cloud Based Simple Notification Channel",
      importance: Importance.max,
      priority: Priority.max,
      largeIcon:  DrawableResourceAndroidBitmap("appicon"),

    );

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails
    );

    _flutterLocalNotificationPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        "Icon $title",
        body,
        notificationDetails
    );

  }




  //Cloud Methods for Notifiation Handling
  void requestPermission()async{

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true ,
      provisional: false ,
      badge: true,
      sound: true,
      carPlay: true,
      criticalAlert: true,
    );
    if(settings.authorizationStatus== AuthorizationStatus.authorized){
      print('Notification Are Authorized');
    }
    else if(settings.authorizationStatus== AuthorizationStatus.provisional){
      print('Notification Are Authorized');
    }
    else{
      print('Notification Are Denied');

    }

  }

  Future<String?> deviceToken()async{
    String? device_token = await messaging.getToken();
    print(device_token.toString());
  }

  void cloudSimpleMessagewithDetails(){
    FirebaseMessaging.onMessage.listen((event) {
      showSimpleCloudNotification(event.notification!.title.toString(), event.notification!.body.toString());
    });

  }
  void cloudIconMessagewithDetails(){
    FirebaseMessaging.onMessage.listen((event) {
      showIconCloudNotification(
        event.notification!.title.toString(),//title
        event.notification!.body.toString(),//body

      );


    });

  }







}