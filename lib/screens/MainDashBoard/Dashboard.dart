import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notification_app/screens/Notifications/notification%20dashboard.dart';


class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(FontAwesomeIcons.home,color: Colors.white,size: 20,),
              FaIcon(FontAwesomeIcons.bell,color: Colors.white,size: 20,),
              CircleAvatar(radius: 26,
                backgroundColor: Colors.white,child: FaIcon(FontAwesomeIcons.add,color: Colors.orangeAccent,size: 20,),
              ),
              FaIcon(FontAwesomeIcons.video,color: Colors.white,size: 20,),
              Icon(Icons.person,color: Colors.white,)
            ],
          ),
        ),
      body: Stack(
        children: [
          
          FadeInUp(duration: Duration(seconds: 2),child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [

                              Colors.orangeAccent.withOpacity(0.4),
                              Colors.cyan.withOpacity(0.6)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ],
                        image: const DecorationImage(
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
                              const Opacity(
                                opacity: 0.8,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.transparent,

                                ),
                              )
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/20,),
                          const Row(
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
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [

                              Colors.blue.withOpacity(0.4),
                              Colors.deepPurpleAccent.withOpacity(0.6)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                        boxShadow: const [
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
                          const Row(
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Follow Us", style: TextStyle(
                                fontFamily: "K-Bold",
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
          ),),
          //2nd Column Items
         FadeInUp(duration: const Duration(seconds: 2),child:  Row(
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
                         borderRadius: const BorderRadius.all(Radius.circular(20)),
                         gradient: LinearGradient(
                             colors: [

                               Colors.greenAccent.withOpacity(0.4),
                               Colors.yellow.withOpacity(0.6)
                             ],
                             begin: Alignment.centerLeft,
                             end: Alignment.centerRight
                         ),
                         boxShadow: const [
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
                                 const SizedBox(),const SizedBox(),const SizedBox(),
                               ],
                             ),
                             const SizedBox(height: 20,),
                             const Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Learn Flutter", style: TextStyle(
                                   fontFamily: "K-Bold",
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
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationDashboard()));
                   },
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                     child: Container(
                         decoration: BoxDecoration(
                             color: Colors.cyanAccent,
                             borderRadius: const BorderRadius.all(Radius.circular(20)),
                             gradient: LinearGradient(
                                 colors: [

                                   Colors.blue.withOpacity(0.5),
                                   Colors.cyanAccent.withOpacity(0.3)
                                 ],
                                 begin: Alignment.centerLeft,
                                 end: Alignment.centerRight
                             ),
                             boxShadow: const [
                               BoxShadow(
                                 color: Colors.black12,
                                 blurRadius: 2,
                                 spreadRadius: 2,
                               )
                             ],
                             image: const DecorationImage(
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
                                   SizedBox(height: MediaQuery.of(context).size.height/12,),
                                   const SizedBox(),const SizedBox(),
                                 ],),
                               SizedBox(height: MediaQuery.of(context).size.height/20,),
                               const Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Text("Notifications\nHandling", style: TextStyle(
                                     color: Colors.white,fontWeight: FontWeight.bold,
                                     fontFamily: "Bold",
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
                 )
               ],
             )
           ],
         ),),
          FadeInUp(duration: const Duration(seconds: 2),delay: const Duration(
            seconds: 2
          ),child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/1.8,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Text("Join CPC COMMUNITY",style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Bold",
                  fontWeight: FontWeight.bold,color: Colors.cyan
              ),),),
              SizedBox(height: MediaQuery.of(context).size.height/25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43),
                child: Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(

                      image: const DecorationImage(
                        alignment: Alignment.topRight,
                        opacity: 0.4,
                        image: AssetImage('assets/images/2.png',),
                      ),
                      color: const Color.fromRGBO(72, 128, 217, 0.7),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          colors: [
                            //Color.fromRGBO(72, 128, 217, 0.9),
                            Colors.cyanAccent.withOpacity(0.1),
                            Colors.deepPurpleAccent.withOpacity(0.7)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft
                      ),
                      boxShadow: const [
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
                      const SizedBox(),
                      Row(
                        children: [
                          const SizedBox(width: 10,),
                          const Text('Be Part Of Biggest \nTech Community \nof Peshawar',style: TextStyle(
                              fontFamily: "K-Thin",
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
                      const SizedBox(),const SizedBox(),const SizedBox(),const SizedBox(),
                      const Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('APPLICATIONS ARE OPENED NOW ',style: TextStyle(
                            color: Colors.white,
                            fontFamily: "K-ThinItalic",
                            fontWeight: FontWeight.bold,
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
          ),),


        ],
      ),

    );
  }
}
