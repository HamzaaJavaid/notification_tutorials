import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notification_app/screens/MainDashBoard/Dashboard.dart';

class NotificationDashboard extends StatefulWidget {
  const NotificationDashboard({super.key});

  @override
  State<NotificationDashboard> createState() => _NotificationDashboardState();
}

class _NotificationDashboardState extends State<NotificationDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/20,),
                  Text('GOOD EVENING',style: TextStyle(
                      fontSize: 26,fontWeight: FontWeight.bold,
                      fontFamily: "Bold"
                  ),),
                  SizedBox(),SizedBox(),SizedBox(),SizedBox(),
                  SizedBox(),SizedBox(),SizedBox(),SizedBox(),
                  SizedBox(),SizedBox(),SizedBox(),SizedBox(),
                  SizedBox(),SizedBox(),SizedBox(),SizedBox(),
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/images/profilcPic.png'),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/10,),
                  Text('Hamza Javaid',style: TextStyle(
                    fontFamily: "Regular",
                      fontSize:20,
                      color: Colors.deepPurpleAccent
                  ),),
                  SizedBox(width: 30,),
                  FaIcon(FontAwesomeIcons.crown,color: Colors.orange,)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/5,
                  decoration: BoxDecoration(
                    //color: Colors.orange,
                      borderRadius:BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors:[
                          Colors.orange.withOpacity(0.5),
                          Colors.yellow.withOpacity(0.9)
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      image: DecorationImage(

                          alignment: Alignment.centerRight,
                          image: AssetImage('assets/images/learning.png')
                      )

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/27,),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Text('Enroll Now ',style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontFamily: "Bold",
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),),

                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child:Container(
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            width: MediaQuery.of(context).size.height/6.6,
                            height: MediaQuery.of(context).size.height/20,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Center(
                                  child: Text('Apply Here',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "K-Thin",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                ),
                                SizedBox(width: 6,),
                                FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,size: 15,),
                              ],
                            )
                        ) ,),
                    ],
                  ),
                ),


              ),
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Container(
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.width,
               // color: Colors.yellow,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Container(

                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(

                          borderRadius:BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors:[
                              Colors.cyan.withOpacity(0.5),
                              Colors.blueAccent.withOpacity(0.9)
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          image: DecorationImage(

                              scale: 5,
                              opacity: 0.6,
                              alignment: Alignment.centerRight,
                              image: AssetImage('assets/images/teacher.png')
                          )

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Padding(

                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('TAKE LESSON',style: TextStyle(
                                color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                            ),),

                          ),
                          SizedBox(height: 13,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child:Container(
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                width: MediaQuery.of(context).size.height/8.6,
                                height: MediaQuery.of(context).size.height/23,
                                child: Row(
                                  children: [
                                    SizedBox(width: 16,),
                                    Center(
                                      child: Text('Join Now',style: TextStyle(
                                        fontFamily: 'K-ThinItalic',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 15
                                      ),),
                                    ),
                                  ],
                                )
                            ) ,),

                        ],
                      ),
                    ),


                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Container(

                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(

                          borderRadius:BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors:[
                              Colors.blue.withOpacity(0.5),
                              Colors.purpleAccent.withOpacity(0.9)
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          image: DecorationImage(

                              scale: 5,
                              opacity: 0.6,
                              alignment: Alignment.centerRight,
                              image: AssetImage('assets/images/dailytask.png')
                          )

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Padding(

                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('DAILY TEST',style: TextStyle(
                                color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                            ),),

                          ),
                          SizedBox(height: 13,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child:Container(
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                width: MediaQuery.of(context).size.height/8.6,
                                height: MediaQuery.of(context).size.height/23,
                                child: Row(
                                  children: [
                                    SizedBox(width: 16,),
                                    Center(
                                      child: Text('Apply Here',style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "K-ThinItalic",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),),
                                    ),
                                  ],
                                )
                            ) ,),

                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Container(

                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(

                          borderRadius:BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors:[
                              Colors.yellow.withOpacity(0.8),
                              Colors.greenAccent.withOpacity(0.9)
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          image: DecorationImage(

                              scale: 5,
                              opacity: 0.6,
                              alignment: Alignment.centerRight,
                              image: AssetImage('assets/images/progress.png')
                          )

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Padding(

                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('PROGRESS',style: TextStyle(
                                color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                            ),),

                          ),
                          SizedBox(height: 13,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child:Container(
                                decoration: BoxDecoration(
                                    color: Colors.purpleAccent.withOpacity(0.8),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                width: MediaQuery.of(context).size.height/9.6,
                                height: MediaQuery.of(context).size.height/23,
                                child: Row(
                                  children: [
                                    SizedBox(width: 13,),
                                    Center(
                                      child: Text('  Check ',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        fontFamily: "K-ThinItalic",
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                  ],
                                )
                            ) ,),

                        ],
                      ),
                    ),


                  ],
                ),

              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Divider(
                endIndent:MediaQuery.of(context).size.width/20 ,
                indent: MediaQuery.of(context).size.width/20,
                color: Colors.black12,
                thickness: 1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/8,
                  decoration: BoxDecoration(
                    //color: Colors.orange,
                      borderRadius:BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors:[
                          Colors.orange.withOpacity(0.5),
                          Colors.purpleAccent.withOpacity(0.9)
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),


                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/localnotification.png'),
                          radius: 45,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 10,),
                          Text("LOCAL NOTIFICATIONS",style: TextStyle(
                            color: Colors.white,fontSize: 20,
                            fontFamily: "Bold"
                          ),),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child:Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellow.withOpacity(0.4),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                width: MediaQuery.of(context).size.height/4,
                                height: MediaQuery.of(context).size.height/23,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Test It Now', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "K-Bold",
                                      fontSize: 18,

                                    ),textAlign: TextAlign.center,),
                                  ],
                                )
                            ) ,),

                        ],
                      )

                    ],
                  ),

                ),


              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/8,
                  decoration: BoxDecoration(
                    //color: Colors.orange,
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      colors:[
                        Colors.green.withOpacity(0.8),
                        Colors.blue.withOpacity(0.5)
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),


                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/cloudnotification.png'),
                          radius: 45,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 10,),
                          Text("CLOUD NOTIFICATIONS",style: TextStyle(
                              color: Colors.white,fontSize: 20,
                              fontFamily: "Bold"
                          ),),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child:Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                width: MediaQuery.of(context).size.height/4,
                                height: MediaQuery.of(context).size.height/23,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Test It Now', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "K-Bold",
                                      fontSize: 18,

                                    ),textAlign: TextAlign.center,),
                                  ],
                                )
                            ) ,),

                        ],
                      )

                    ],
                  ),

                ),


              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),



            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        //color: Colors.deepOrangeAccent.withOpacity(0.4),
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.6),
              Colors.purpleAccent.withOpacity(0.6)
            ],
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),

          ),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: FaIcon(FontAwesomeIcons.home,color: Colors.white,size: 20,),
            ),
            FaIcon(FontAwesomeIcons.bell,color: Colors.white,size: 20,),
            CircleAvatar(radius: 26,
              backgroundColor: Colors.white,child: FaIcon(FontAwesomeIcons.add,color: Colors.orangeAccent,size: 20,),
            ),
            FaIcon(FontAwesomeIcons.sun,color: Colors.white,size: 20,),
            Icon(Icons.person,color: Colors.white,)
          ],
        ),
      ),

    );
  }
}

