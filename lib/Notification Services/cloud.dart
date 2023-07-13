import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:app_settings/app_settings.dart';


class CloudNotificationService{


  FirebaseMessaging messaging = FirebaseMessaging.instance;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings  androidInitializationSettings = AndroidInitializationSettings("@mipmap/ic_launcher");



  //Local Notif Stuff
  void local_initializeNotification()async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
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
  void cloud_showSimpleNotifications(){

    FirebaseMessaging.onMessage.listen((event) {

      local_showSimpleNotfications(event.notification!.title.toString(), event.notification!.body.toString());

    });

  }
  void cloud_showIconNotifications(){

    FirebaseMessaging.onMessage.listen((event) {

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









