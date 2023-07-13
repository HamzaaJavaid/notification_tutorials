import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/Notification%20Services/cloud.dart';


class CloudNotification extends StatefulWidget {
  const CloudNotification({super.key});

  @override
  State<CloudNotification> createState() => _CloudNotificationState();
}

class _CloudNotificationState extends State<CloudNotification> {

  CloudService cloudService = CloudService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cloudService.requestPermission();
    cloudService.initializeCloudNotificationViaLocalNotificationPackage();
    cloudService.deviceToken();



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
              SizedBox(height: screenHeight/150,),
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent.withOpacity(0.4),
                            Colors.lightGreenAccent.withOpacity(0.4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )

                    ),
                    width: screenWidth/2,
                    height: screenHeight/10,

                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Simple Notification",style: TextStyle(
                              color: Colors.deepPurpleAccent.withOpacity(0.6),
                              fontSize: 17,
                              fontFamily: "Bold",
                            ),),
                            MaterialButton(
                                onPressed: (){
                                  cloudService.cloudSimpleMessagewithDetails();

                                },
                                color: Colors.greenAccent.withOpacity(0.7),
                                height: screenHeight/30,
                                minWidth: screenWidth/3,
                                shape: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                child: const Text("Enable Now",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "K-Thin"
                                ),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),),

                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent.withOpacity(0.4),
                            Colors.lightGreenAccent.withOpacity(0.4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )

                    ),
                    width: screenWidth/2,
                    height: screenHeight/10,

                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Icon Notification",style: TextStyle(
                              color: Colors.deepPurpleAccent.withOpacity(0.6),
                              fontSize: 19,
                              fontFamily: "Bold",
                            ),),
                            MaterialButton(
                                onPressed: (){
                                 cloudService.cloudIconMessagewithDetails();
                                },
                                color: Colors.greenAccent.withOpacity(0.7),
                                height: screenHeight/30,
                                minWidth: screenWidth/3,
                                shape: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                child: const Text("Enalbe Now",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "K-Thin"
                                ),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),),
                  const SizedBox(width: 10,),

                ],
              ),
              const SizedBox(height: 4,),
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent.withOpacity(0.4),
                            Colors.lightGreenAccent.withOpacity(0.4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )

                    ),
                    width: screenWidth/2,
                    height: screenHeight/10,

                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Picture Notification",style: TextStyle(
                              color: Colors.deepPurpleAccent.withOpacity(0.6),
                              fontSize: 19,
                              fontFamily: "Bold",
                            ),),
                            MaterialButton(
                                onPressed: (){

                                },
                                color: Colors.greenAccent.withOpacity(0.7),
                                height: screenHeight/30,
                                minWidth: screenWidth/3,
                                shape: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                child: const Text("Enable Now",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "K-Thin"
                                ),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),),

                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent.withOpacity(0.4),
                            Colors.lightGreenAccent.withOpacity(0.4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )

                    ),
                    width: screenWidth/2,
                    height: screenHeight/10,

                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Zoned Notification",style: TextStyle(
                              color: Colors.deepPurpleAccent.withOpacity(0.6),
                              fontSize: 19,
                              fontFamily: "Bold",
                            ),),
                            MaterialButton(
                                onPressed: (){

                                },
                                color: Colors.greenAccent.withOpacity(0.7),
                                height: screenHeight/30,
                                minWidth: screenWidth/3,
                                shape: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                child: const Text("Enable Now",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "K-Thin"
                                ),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),),
                  const SizedBox(width: 10,),

                ],
              ),
              const SizedBox(height: 4,),
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent.withOpacity(0.4),
                            Colors.lightGreenAccent.withOpacity(0.4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )

                    ),
                    width: screenWidth/2,
                    height: screenHeight/10,

                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Payload Notification",style: TextStyle(
                              color: Colors.deepPurpleAccent.withOpacity(0.6),
                              fontSize: 19,
                              fontFamily: "Bold",
                            ),),
                            MaterialButton(
                                onPressed: (){

                                },
                                color: Colors.greenAccent.withOpacity(0.7),
                                height: screenHeight/30,
                                minWidth: screenWidth/3,
                                shape: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                child: const Text("Enable Now",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "K-Thin"
                                ),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),),

                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent.withOpacity(0.4),
                            Colors.lightGreenAccent.withOpacity(0.4),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )

                    ),
                    width: screenWidth/2,
                    height: screenHeight/10,

                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Navigate Notification",style: TextStyle(
                              color: Colors.deepPurpleAccent.withOpacity(0.6),
                              fontSize: 18,
                              fontFamily: "Bold",
                            ),),
                            MaterialButton(
                                onPressed: (){

                                },
                                color: Colors.greenAccent.withOpacity(0.7),
                                height: screenHeight/30,
                                minWidth: screenWidth/3,
                                shape: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                child: const Text("Enable Now",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "K-Thin"
                                ),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),),
                  const SizedBox(width: 10,),

                ],
              ),
              SizedBox(height: screenHeight/40,),
              const Text('Notif Channel # 3FT56gf',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 9),)

            ],
          ),
        )
    );
  }
}
