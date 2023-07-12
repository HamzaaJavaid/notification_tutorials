import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';

class CloudService{

  FirebaseMessaging messaging = FirebaseMessaging.instance;

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






}