import 'package:flutter/material.dart';
import 'package:notification_app/Notification%20Services/local.dart';

class LocalNotificationScreen extends StatefulWidget {
  const LocalNotificationScreen({super.key});

  @override
  State<LocalNotificationScreen> createState() => _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {

  LocalNotification localnotif = LocalNotification();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    localnotif.initializeNotifications();

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
                          image: AssetImage('assets/images/localnotificationpic.png')
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
                    Text("Local Notification",style: TextStyle(
                      color: Colors.deepPurpleAccent,
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
                          Colors.greenAccent.withOpacity(0.4),
                          Colors.orangeAccent.withOpacity(0.4),
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
                                localnotif.showSimpleNotification(
                                  "Simple Notifications",
                                  "This Is an Simple Notification Body"
                                );

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
                              child: const Text("Test Now",style: TextStyle(
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
                          Colors.greenAccent.withOpacity(0.4),
                          Colors.orangeAccent.withOpacity(0.4),
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
                                localnotif.showIconNotification(
                                "Icon Notification",
                                "This Notication Contain Icon displayed in Notification"
                                );
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
                              child: const Text("Test Now",style: TextStyle(
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
                          Colors.greenAccent.withOpacity(0.4),
                          Colors.orangeAccent.withOpacity(0.4),
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
                                localnotif.showBigPictureNotification("Big Picture", "This is body of Big Picture Notification");
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
                              child: const Text("Test Now",style: TextStyle(
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
                          Colors.greenAccent.withOpacity(0.4),
                          Colors.orangeAccent.withOpacity(0.4),
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
                                localnotif.showZonedNotification("Zoned Notification", "Zoned Notification recieved by device with small Delay");
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
                              child: const Text("Test Now",style: TextStyle(
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
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.greenAccent.withOpacity(0.4),
                      Colors.orangeAccent.withOpacity(0.4),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )

              ),
              width: screenWidth/2,
              height: screenHeight/9,

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
                            localnotif.showPayloadNotification("Payload Notification", "Payload Notification By Hamza Javaid");

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
                          child: const Text("Test Now",style: TextStyle(
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
            ),
            SizedBox(height: screenHeight/40,),
            const Text('Notif Channel # 54312',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 9),)

          ],
        ),
      )
    );
  }
}
