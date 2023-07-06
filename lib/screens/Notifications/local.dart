import 'package:flutter/material.dart';

class LocalNotificationScreen extends StatefulWidget {
  const LocalNotificationScreen({super.key});

  @override
  State<LocalNotificationScreen> createState() => _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var Screen_height = MediaQuery.of(context).size.height;
    var Screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: Screen_width,
                height: Screen_height/1.6,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      opacity: 0.7,
                        image: AssetImage('assets/images/localnotificationpic.png')
                    )
                ),
              ),
              Container(
                width: Screen_width,
                height: Screen_height/1.6,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    
                ),
              ),
              Column(
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
          SizedBox(height: Screen_height/50,),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.greenAccent.withOpacity(0.4),
                        Colors.orangeAccent.withOpacity(0.4),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )

                ),
                width: Screen_width/2,
                height: Screen_height/10,

                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text("Simple Notification",style: TextStyle(
                         color: Colors.deepPurpleAccent.withOpacity(0.6),
                         fontSize: 24,
                         fontFamily: "Bold",
                       ),),
                       MaterialButton(
                           onPressed: (){},
                           child: Text("Test Now",style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               fontFamily: "K-Thin"
                           ),),
                           color: Colors.greenAccent.withOpacity(0.7),
                           height: Screen_height/20,
                           minWidth: Screen_width/3,
                           shape: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(20)),
                               borderSide: BorderSide(
                                   color: Colors.transparent
                               )
                           )

                       ),
                     ],
                   )
                  ],
                ),
              ),),

              SizedBox(width: 10,),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.greenAccent.withOpacity(0.4),
                        Colors.orangeAccent.withOpacity(0.4),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )

                ),
                width: Screen_width/2,
                height: Screen_height/10,

                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Icon Notification",style: TextStyle(
                          color: Colors.deepPurpleAccent.withOpacity(0.6),
                          fontSize: 24,
                          fontFamily: "Bold",
                        ),),
                        MaterialButton(
                            onPressed: (){},
                            child: Text("Test Now",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "K-Thin"
                            ),),
                            color: Colors.greenAccent.withOpacity(0.7),
                            height: Screen_height/20,
                            minWidth: Screen_width/3,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            )

                        ),
                      ],
                    )
                  ],
                ),
              ),),
              SizedBox(width: 10,),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.greenAccent.withOpacity(0.4),
                        Colors.orangeAccent.withOpacity(0.4),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )

                ),
                width: Screen_width/2,
                height: Screen_height/10,

                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Picture Notification",style: TextStyle(
                          color: Colors.deepPurpleAccent.withOpacity(0.6),
                          fontSize: 24,
                          fontFamily: "Bold",
                        ),),
                        MaterialButton(
                            onPressed: (){},
                            child: Text("Test Now",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "K-Thin"
                            ),),
                            color: Colors.greenAccent.withOpacity(0.7),
                            height: Screen_height/20,
                            minWidth: Screen_width/3,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            )

                        ),
                      ],
                    )
                  ],
                ),
              ),),

              SizedBox(width: 10,),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.greenAccent.withOpacity(0.4),
                        Colors.orangeAccent.withOpacity(0.4),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )

                ),
                width: Screen_width/2,
                height: Screen_height/10,

                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Zoned Notification",style: TextStyle(
                          color: Colors.deepPurpleAccent.withOpacity(0.6),
                          fontSize: 24,
                          fontFamily: "Bold",
                        ),),
                        MaterialButton(
                            onPressed: (){},
                            child: Text("Test Now",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "K-Thin"
                            ),),
                            color: Colors.greenAccent.withOpacity(0.7),
                            height: Screen_height/20,
                            minWidth: Screen_width/3,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            )

                        ),
                      ],
                    )
                  ],
                ),
              ),),
              SizedBox(width: 10,),

            ],
          ),
          SizedBox(height: 15,),
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Colors.greenAccent.withOpacity(0.4),
                    Colors.orangeAccent.withOpacity(0.4),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )

            ),
            width: Screen_width/2,
            height: Screen_height/20,

            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Zoned Notification",style: TextStyle(
                      color: Colors.deepPurpleAccent.withOpacity(0.6),
                      fontSize: 24,
                      fontFamily: "Bold",
                    ),),
                    MaterialButton(
                        onPressed: (){},
                        child: Text("Test Now",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "K-Thin"
                        ),),
                        color: Colors.greenAccent.withOpacity(0.7),
                        height: Screen_height/20,
                        minWidth: Screen_width/3,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.transparent
                            )
                        )

                    ),
                  ],
                )
              ],
            ),
          ),),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
