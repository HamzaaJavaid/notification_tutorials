

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notification_app/screens/Payload%20Navigate%20Extra%20Screen.dart';


class CloudNotificaitonService{

  FirebaseMessaging message = FirebaseMessaging.instance ;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings androidInitializationSettings  = AndroidInitializationSettings("@mipmap/ic_launcher");

  void initializeLocalNotification(BuildContext context, RemoteMessage messagePayload)async{
    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
    );
    await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
      onDidReceiveNotificationResponse: (message){
          if(messagePayload.data["Link"]=="www.123movies.com"){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PayloadExtraScreen()));
          }
          else{
            print('Not Navigate');
          }
      }

    );
  }
  void local_showNotification(String title , String body){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString() ,
        "clooud Notification",
      channelShowBadge: true,
      channelDescription: "This is Channel for Cloud Notification",
      importance: Importance.max,
      priority: Priority.max,
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


  Future<void> requestPermission(context)async{
    NotificationSettings notificationSettings = await message.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      criticalAlert: true,
      carPlay: true,
      provisional: true,
    );
    if(notificationSettings.authorizationStatus== AuthorizationStatus.authorized){
      return showDialog(context: context, builder: (context){
        return  Dialog(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      width: 360,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Permission Granted Succesfully",style: TextStyle(
                              color: Colors.green,
                              fontSize: 17,
                              fontFamily: "K-Bold"
                          ),),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Expanded(child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);

                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                color: Colors.redAccent,
                                minWidth: 130,
                                height: 40,
                                child: Text("Cancel",style: TextStyle(
                                    color: Colors.white,fontSize: 16
                                ),),
                              ),),
                              SizedBox(width: 6,),
                              Expanded(child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                color: Colors.lightGreenAccent,
                                minWidth: 130,
                                height: 40,
                                child: Text("OK",style: TextStyle(
                                    color: Colors.white,fontSize: 16
                                ),),
                              ),),
                              SizedBox(width: 10,),
                            ],
                          ),
                          SizedBox(height: 16,)
                        ],
                      ),

                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            'assets/images/granted.png'
                        ),
                      ),],),
                    SizedBox(height: 80,)
                  ],
                ),

              ],
            )
        );
      });
    }
    if(notificationSettings.authorizationStatus==AuthorizationStatus.denied){
      return showDialog(context: context, builder: (context){
        return  Dialog(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      width: 360,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Permission Denied .Goto Setting & Allow",style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontFamily: "K-Bold"
                          ),),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Expanded(child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);

                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                color: Colors.redAccent,
                                minWidth: 130,
                                height: 40,
                                child: Text("Cancel",style: TextStyle(
                                    color: Colors.white,fontSize: 16
                                ),),
                              ),),
                              SizedBox(width: 6,),
                              Expanded(child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                color: Colors.lightGreenAccent,
                                minWidth: 130,
                                height: 40,
                                child: Text("OK",style: TextStyle(
                                    color: Colors.white,fontSize: 16
                                ),),
                              ),),
                              SizedBox(width: 10,),
                            ],
                          ),
                          SizedBox(height: 16,)
                        ],
                      ),

                    ),

                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            'assets/images/denied.png'
                        ),
                      ),],),
                    SizedBox(height: 80,)
                  ],
                ),

              ],
            )
        );
      });
    }


  }
  void getDeviceToken()async{
    String? token = await message.getToken();
    print("Token is :$token");
  }
  void getOnlyDetailsfromBroadcastMessageFromCloudServer(){
    FirebaseMessaging.onMessage.listen((event) {
      print(event.notification?.title.toString());
      print(event.notification?.body.toString());
      print(event.data["Link"]);
    });
  }
  void cloud_showCloudNotification(BuildContext context){
    FirebaseMessaging.onMessage.listen((event) {
      initializeLocalNotification(context,event);
      local_showNotification(event.notification!.title.toString(), event.notification!.body.toString());

    });
  }
  Future<void> backgroundAppNotificationPayload(BuildContext context)async{
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      if(event.data["Link"]=="www.123movies.com"){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PayloadExtraScreen()));
      }
    });

    RemoteMessage? killedStateNotification = await FirebaseMessaging.instance.getInitialMessage();
    if(killedStateNotification!=null){
      if(killedStateNotification.data["Link"]=="www.123movies.com"){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PayloadExtraScreen()));
      }
    }

  }






}















/*
import 'dart:ui';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:app_settings/app_settings.dart';
import 'package:notification_app/screens/Payload%20Navigate%20Extra%20Screen.dart';


class CloudNotificationService{


  FirebaseMessaging messaging = FirebaseMessaging.instance;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings  androidInitializationSettings = AndroidInitializationSettings("@mipmap/ic_launcher");



  //Local Notif Stuff
  void local_initializeNotification(BuildContext context, RemoteMessage messageRemote)async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );
    await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
      onDidReceiveNotificationResponse: (payload){

          if(messageRemote.data['Link']=="www.123movies.com"){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PayloadExtraScreen()));
          }
      }
    );
  }
  void local_showSimpleNotfications(String title , String body){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Cloud Simple Notification Channel",
      channelDescription: "This Is Cloud Base Simple Notification Channel",
      channelShowBadge: true,
      importance: Importance.max,
      priority: Priority.max
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(8),
        title,
        body,
        notificationDetails
    );
  }
  void local_showIconNotfications(String title , String body){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Cloud Simple Notification Channel",
        channelDescription: "This Is Cloud Base Simple Notification Channel",
        channelShowBadge: true,
        importance: Importance.max,
        priority: Priority.max,
      largeIcon: DrawableResourceAndroidBitmap('appicon')
    );

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(8),
        title,
        body,
        notificationDetails
    );
  }
  void local_showPayloadNotification(String title , String body,String payload){


    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        DateTime.now().millisecondsSinceEpoch.remainder(8).toString(),
        "Cloud Simple Notification Channel",
        channelDescription: "This Is Cloud Base Simple Notification Channel",
        channelShowBadge: true,
        importance: Importance.max,
        priority: Priority.max,
        largeIcon: DrawableResourceAndroidBitmap('appicon')
    );

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecondsSinceEpoch.remainder(8),
        title,
        body,
        notificationDetails,
      payload: payload
    );
  }



  //Cloud Functionalities Methods
  Future<Object> requestPermission(context)async{

    NotificationSettings notificationSettings = await messaging.requestPermission(
      announcement: true ,
      alert: true,
      sound: true,
      badge: true,
      provisional: true,
    );

    if(notificationSettings.authorizationStatus== AuthorizationStatus.authorized){
      return showDialog(context: context, builder: (context){
        return  Dialog(
            backgroundColor: Colors.transparent,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      width: 360,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Notification Permission Authorized",style: TextStyle(
                              color: Colors.green,
                              fontSize: 17,
                              fontFamily: "K-Bold"
                          ),),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Expanded(child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);

                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                color: Colors.redAccent,
                                minWidth: 130,
                                height: 40,
                                child: Text("Cancel",style: TextStyle(
                                    color: Colors.white,fontSize: 16
                                ),),
                              ),),
                              SizedBox(width: 6,),
                              Expanded(child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                color: Colors.lightGreenAccent,
                                minWidth: 130,
                                height: 40,
                                child: Text("OK",style: TextStyle(
                                    color: Colors.white,fontSize: 16
                                ),),
                              ),),
                              SizedBox(width: 10,),
                            ],
                          ),
                          SizedBox(height: 16,)
                        ],
                      ),

                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            'assets/images/granted.png'
                        ),
                      ),],),
                    SizedBox(height: 80,)
                  ],
                ),

              ],
            )
        );
      });

    }

    return showDialog(context: context, builder: (context){
      return  Dialog(
          backgroundColor: Colors.transparent,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    width: 360,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Notification Permission Denied",style: TextStyle(
                            color: Colors.red,
                            fontSize: 17,
                            fontFamily: "K-Bold"
                        ),),
                        Text("GO to Settings > App > Open App > Notifiations > Allow Notifictions",style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "K-ThinItalic"
                        ),),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Expanded(child: MaterialButton(
                              onPressed: (){
                                Navigator.pop(context);

                              },
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              color: Colors.redAccent,
                              minWidth: 130,
                              height: 40,
                              child: Text("Cancel",style: TextStyle(
                                  color: Colors.white,fontSize: 16
                              ),),
                            ),),
                            SizedBox(width: 6,),
                            Expanded(child: MaterialButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              color: Colors.lightGreenAccent,
                              minWidth: 130,
                              height: 40,
                              child: Text("OK",style: TextStyle(
                                  color: Colors.white,fontSize: 16
                              ),),
                            ),),
                            SizedBox(width: 10,),
                          ],
                        ),
                        SizedBox(height: 16,)
                      ],
                    ),

                  ),

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/images/denied.png'
                      ),
                    ),],),
                  SizedBox(height: 80,)
                ],
              ),

            ],
          )
      );
    });


  }
  void getDeviceToken()async{
    String? device_token = await messaging.getToken();
    print(device_token);
  }
  void cloud_showSimpleNotifications(BuildContext context){

    FirebaseMessaging.onMessage.listen((event) {


      local_initializeNotification(context,event);
      local_showSimpleNotfications(event.notification!.title.toString(), event.notification!.body.toString());


    });

  }
  void cloud_showIconNotifications(BuildContext context){

    FirebaseMessaging.onMessage.listen((event) {

      local_initializeNotification(context, event);
      local_showIconNotfications(event.notification!.title.toString(), event.notification!.body.toString());

    });

  }





  void showCloudNotificationDetails(){
    FirebaseMessaging.onMessage.listen((event) {
      print(event.notification!.title.toString());
      print(event.notification!.body.toString());
    });
  }





}











 */
