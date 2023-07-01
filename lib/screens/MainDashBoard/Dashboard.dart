import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          //1st Column Items
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [

                              Colors.orangeAccent.withOpacity(0.4),
                              Colors.cyan.withOpacity(0.6)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ],
                      image: DecorationImage(
                        image: AssetImage('assets/images/welcome.png',),
                        scale: 4,
                        opacity: 0.4
                      )
                    ),
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/2.2,
                    child:Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/40),
                      child: Column(


                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height/20,),
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width/20,),
                             Opacity(
                               opacity: 0.8,
                               child: CircleAvatar(
                                 radius: 30,
                                 backgroundColor: Colors.transparent,
                                // backgroundImage: AssetImage('assets/images/profilcPic.png',),
                               ),
                             )
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("WELCOME \nBACK", style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                              FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    )

                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/60,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [

                              Colors.blue.withOpacity(0.4),
                              Colors.deepPurpleAccent.withOpacity(0.6)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ]
                    ),
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/2,
                    child:Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/40),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height/30,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             SizedBox(),
                             FaIcon(FontAwesomeIcons.facebook,color: Colors.white,size: 30,),
                             FaIcon(FontAwesomeIcons.instagram,color: Colors.white,size: 30,),
                             FaIcon(FontAwesomeIcons.youtube,color: Colors.white,size: 30,),
                             FaIcon(FontAwesomeIcons.linkedin,color: Colors.white,size: 30,),
                             SizedBox(),
                           ],
                         ),
                          SizedBox(height: MediaQuery.of(context).size.height/40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Follow Us", style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                              FaIcon(FontAwesomeIcons.arrowRight,color: Colors.greenAccent,)
                            ],
                          )
                        ],
                      ),
                    )

                ),
              ),
            ],
          ),
          //2nd Column Items
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             Column(
               children: [
                 SizedBox(height: MediaQuery.of(context).size.height/10,),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.cyanAccent,
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                           gradient: LinearGradient(
                               colors: [

                                 Colors.greenAccent.withOpacity(0.4),
                                 Colors.yellow.withOpacity(0.6)
                               ],
                               begin: Alignment.centerLeft,
                               end: Alignment.centerRight
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black12,
                               blurRadius: 2,
                               spreadRadius: 2,
                             )
                           ],
                       ),
                       height: MediaQuery.of(context).size.height/6,
                       width: MediaQuery.of(context).size.width/2.6,
                       child:Padding(
                         padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/40),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                               children: [
                                 SizedBox(height: MediaQuery.of(context).size.height/20,),
                                 FaIcon(
                                   FontAwesomeIcons.television,
                                   size: MediaQuery.of(context).size.height/20,
                                   color: Colors.white,
                                 ),
                                 SizedBox(),SizedBox(),SizedBox(),
                               ],
                             ),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Learn Flutter", style: TextStyle(
                                   color: Colors.white,fontWeight: FontWeight.bold,
                                   fontSize: 20,
                                 ),),
                                                                ],

                             )

                           ],
                         ),
                       )

                   ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height/120,),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.cyanAccent,
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                           gradient: LinearGradient(
                               colors: [

                                 Colors.blue.withOpacity(0.5),
                                 Colors.cyanAccent.withOpacity(0.3)
                               ],
                               begin: Alignment.centerLeft,
                               end: Alignment.centerRight
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black12,
                               blurRadius: 2,
                               spreadRadius: 2,
                             )
                           ],
                         image: DecorationImage(
                           opacity: 0.3,
                           image: AssetImage('assets/images/notification.png'),
                         )
                       ),
                       height: MediaQuery.of(context).size.height/4.2,
                       width: MediaQuery.of(context).size.width/2.6,
                       child:Padding(
                         padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/40),
                         child: Column(

                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(height: MediaQuery.of(context).size.height/28,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                               FaIcon(
                                 FontAwesomeIcons.newspaper,
                                 size: MediaQuery.of(context).size.height/15,
                                 color: Colors.white60,
                               ),
                                 SizedBox(),SizedBox(),
                             ],),
                             SizedBox(height: MediaQuery.of(context).size.height/20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text("Notifications\nHandling", style: TextStyle(
                                   color: Colors.white,fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                 ),),
                                 FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,size: 18,),
                               ],
                             )
                           ],
                         ),
                       )

                   ),
                 ),
               ],
             )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/1.8,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Text("Join CPC COMMUNITY",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,color: Colors.black
              ),),),
              SizedBox(height: MediaQuery.of(context).size.height/25,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43),
                child: Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                      alignment: Alignment.topRight,
                      opacity: 0.4,
                      image: AssetImage('assets/images/2.png',),
                    ),
                    color: Color.fromRGBO(72, 128, 217, 0.7),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [
                           //Color.fromRGBO(72, 128, 217, 0.9),
                          Colors.cyanAccent.withOpacity(0.1),
                          Colors.deepPurpleAccent.withOpacity(0.7)
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                        )
                      ]
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Be Part Of Biggest \nTech Community \nof Peshawar',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
                        Image.asset(
                          "assets/images/cpc.png",
                          height: MediaQuery.of(context).size.height/6,
                          width: MediaQuery.of(context).size.width/4,
                        ),
                        
                      ],
                    ),
                    SizedBox(),SizedBox(),SizedBox(),SizedBox(),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text('APPLICATIONS ARE OPENED NOW ',style: TextStyle(
                          color: Colors.white,
                          fontSize:14,
                        ),),
                        SizedBox(width: 30,),
                        FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,size: 22,)
                      ],
                    ),
                  ],
                ),

              ),),

            ],
          )


        ],
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
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FaIcon(FontAwesomeIcons.home,color: Colors.white,size: 20,),
            FaIcon(FontAwesomeIcons.bell,color: Colors.white,size: 20,),
            CircleAvatar(radius: 26,child: FaIcon(FontAwesomeIcons.add,color: Colors.orangeAccent,size: 20,),
            backgroundColor: Colors.white,
            ),
            FaIcon(FontAwesomeIcons.video,color: Colors.white,size: 20,),
            Icon(Icons.person,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
