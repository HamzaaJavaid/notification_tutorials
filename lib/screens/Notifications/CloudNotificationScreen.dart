import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notification_app/Notification%20Services/cloud.dart';


class CloudNotification extends StatefulWidget {
  const CloudNotification({super.key});

  @override
  State<CloudNotification> createState() => _CloudNotificationState();
}

class _CloudNotificationState extends State<CloudNotification> {

  //CloudNotificationService cloudNotificationService = CloudNotificationService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*
    cloudNotificationService.requestPermission(context);
    cloudNotificationService.getDeviceToken();
    cloudNotificationService.showCloudNotificationDetails();
    cloudNotificationService.cloud_showSimpleNotifications(context);
    cloudNotificationService.cloud_showIconNotifications(context);

     */

  }


  CloudNotificaitonService cloudNotificaitonService =CloudNotificaitonService();
  void ActionMethod(){

    cloudNotificaitonService.requestPermission(context);
    cloudNotificaitonService.getDeviceToken();
    cloudNotificaitonService.getOnlyDetailsfromBroadcastMessageFromCloudServer();
    cloudNotificaitonService.cloud_showCloudNotification();

  }



  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: screenHeight/20,),
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(padding: const EdgeInsets.all(20),child: Container(
                    width: screenWidth,
                    height: screenHeight/2,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            opacity: 0.7,
                            image: AssetImage('assets/images/CloudImage.jpg')
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: screenWidth,
                      height: screenHeight/2,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: const BorderRadius.all(Radius.circular(20))

                      ),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cloud Notification",style: TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontFamily: "Bold",
                      ),),
                      Text("This Tutorial will help you \n to understand about local Notification \n and its functionality",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "K-Thin",
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight/6,),
              MaterialButton(
                onPressed: (){

                  showDialog(context: context, builder: (context){
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
                                      Text("Allow Notification",style: TextStyle(
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
                                            child: Text("Dont Allow",style: TextStyle(
                                                color: Colors.white,fontSize: 16
                                            ),),
                                          ),),
                                          SizedBox(width: 6,),
                                          Expanded(child: MaterialButton(
                                            onPressed: (){
                                              ActionMethod();
                                              Navigator.pop(context);


                                            },
                                            shape: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                borderSide: BorderSide(color: Colors.transparent)
                                            ),
                                            color: Colors.lightGreenAccent,
                                            minWidth: 130,
                                            height: 40,
                                            child: Text("Allow",style: TextStyle(
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
                                        'assets/images/permission.png'
                                    ),
                                  ),],),
                                SizedBox(height: 80,)
                              ],
                            ),

                          ],
                        )
                    );
                  });

                  },
                color: Colors.lightGreenAccent,
                minWidth: screenWidth/1.2,
                height: screenHeight/15,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Text('Enable Cloud Notification',style: TextStyle(
                  color: Colors.deepPurpleAccent.withOpacity(0.8),fontSize: 22,fontFamily: "Bold"
                ),),
              ),
              SizedBox(height: screenHeight/250,),
              const Text('Notif Channel # 3FT56gf',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 9),),


            ],
          ),
        )
    );
  }
}
