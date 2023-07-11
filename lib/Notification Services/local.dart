

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart';

class LocalNotification {


  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings androidInitializationSettings = const AndroidInitializationSettings('@mipmap/ic_launcher');

  void initializeNotifications(){

    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );

    flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
      onDidReceiveNotificationResponse: (response){
          print(response.payload.toString());
      }
    );

  }

  //Notification Display Start here

   void showSimpleNotification(String title , String body){


    /*
                                                     NOTE:-  DEVELOPERS
    ***************    Dont Overwrite this Channel .Overwritting will destabalize this Channel*********************
     */

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        'Simple Notification',
      channelShowBadge: true,
      channelDescription: "This Channel is Made for Simple Notification. ",
      priority: Priority.max,
      importance: Importance.max,
      enableVibration: true
    );


    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        title,
        body,
        notificationDetails
    );

   }

   void showIconNotification(String title , String body){



     /*
                                                     NOTE:-  DEVELOPERS
    ***************    Dont Overwrite this Channel .Overwritting will destabalize this Channel*********************
     */


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Icon Notification",
      channelDescription: "This Channel is made for Notification with Icon init",
      channelShowBadge: true ,
      importance: Importance.max,
      priority:  Priority.max,
      enableVibration: true,
      largeIcon: const DrawableResourceAndroidBitmap('drawable/appicon')


    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        title,
        body,
        notificationDetails,
    );



   }

   void showBigPictureNotification(String title , String body){


     /*
                                                     NOTE:-  DEVELOPERS
    ***************    Dont Overwrite this Channel .Overwritting will destabalize this Channel*********************
     */

    BigPictureStyleInformation bigPictureStyleInformation = const BigPictureStyleInformation(
      DrawableResourceAndroidBitmap('appicon'),
      largeIcon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),

    );

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Big Picture Notification Channe;",
      channelShowBadge: true ,
      channelDescription: "This Channel is intended for Big Picture Notification",
      importance: Importance.max,
      priority: Priority.max,
      enableVibration: true,
      styleInformation: bigPictureStyleInformation,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        title,
        body,
        notificationDetails
    );


   }
   
   void showZonedNotification(String title , String body){

     /*
                                                     NOTE:-  DEVELOPERS
    ***************    Dont Overwrite this Channel .Overwritting will destabalize this Channel*********************
     */

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Zoned Notification",
      channelDescription:"This Channel is made for Zoned Notification",
      channelShowBadge: true,
      enableVibration: true,
      importance: Importance.max ,
      priority: Priority.max,
      styleInformation: const BigPictureStyleInformation(
        DrawableResourceAndroidBitmap('appicon')
      )
    );

    NotificationDetails notificationDetails  = NotificationDetails(
      android: androidNotificationDetails
    );


    flutterLocalNotificationsPlugin.zonedSchedule(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        title,
        body,
        TZDateTime.from(DateTime.now().add(const Duration(seconds: 2)), local),
        notificationDetails, 
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
    );
    
    
   }

   void showPayloadNotification(String title , String body){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Payloads Notification",
      channelShowBadge: true,
      channelDescription: "Notification Payloads Channels",
      importance: Importance.max,
      priority: Priority.max,
      largeIcon: DrawableResourceAndroidBitmap("appicon")
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(20),
        title,
        body,
        notificationDetails,
      payload: "Payload On local Notificaton Screen"
    );
   }
   




}