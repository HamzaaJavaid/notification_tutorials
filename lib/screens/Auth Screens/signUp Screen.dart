import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notification_app/State%20Managment/Account%20Create%20Provider.dart';
import 'package:notification_app/screens/Auth%20Screens/login.dart';
import 'package:provider/provider.dart';

import '../MainDashBoard/Dashboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    //Providers for Managment

    final username_provideer = Provider.of<username_provider>(context , listen: false);
    final emailProvideer = Provider.of<signup_email_provider>(context , listen: false);
    final password_provideer = Provider.of<signup_password_provider>(context,listen: false);
    final confirmpassword_provideer  = Provider.of<confirmpassword_provider>(context,listen: false);
    final checkboxProvideer = Provider.of<checkboxProvider>(context, listen: false);


    print("Build again");


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Image.asset("assets/images/signup.jpg",height: MediaQuery.of(context).size.height/6,),
               SizedBox(height: MediaQuery.of(context).size.height/20,),
              Consumer<username_provider>(builder: (context , value ,child){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: username_provideer.get_username,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.orangeAccent),
                        )

                    ),
                    onChanged: (value){
                      username_provideer.setusername(value);

                    },

                  ),
                );
              }),
              const SizedBox(height: 20,),
              Consumer<signup_email_provider>(builder: (context,value , child){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                  child: TextField(
                    onChanged: (value){
                      emailProvideer.setSignUpemail(value);

                    },
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: emailProvideer.get_SignUpemail,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.orangeAccent),
                        )

                    ),

                  ),
                );
              }),
              const SizedBox(height: 20,),
              Consumer<signup_password_provider>(builder: (context,value , child){
                return  Padding(
                  padding:const  EdgeInsets.symmetric(horizontal: 30),

                  child: TextField(
                    onChanged: (value){
                      password_provideer.setSignUppassword(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: password_provideer.get_SignIppassword,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.orangeAccent),
                        )

                    ),

                  ),
                );
              },),
              const SizedBox(height: 20,),
              Consumer<confirmpassword_provider>(builder: (context,value , child){
                return   Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    onChanged: (value){
                      confirmpassword_provideer.setconfirmpassword(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Confimr password",
                        hintText: confirmpassword_provideer.get_confirmpassword,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.orangeAccent),
                        )

                    ),

                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    Consumer<checkboxProvider>(builder: (context, value , child){
                      return
                        Checkbox(
                          value: checkboxProvideer.get_checkbox_value,
                          onChanged: (value){

                            if(value==false){
                              checkboxProvideer.setCheckBoxValue(false);
                            }
                            else if(value==true){
                              checkboxProvideer.setCheckBoxValue(true);
                            }

                          },
                          activeColor: Colors.orangeAccent,
                        );

                    }),
                     const Text("Do You agree with Policies , Agrement &\n licenses ",style: TextStyle(color: Colors.red),)
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 26),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainDashboard()));
                  },
                  color: Colors.greenAccent,
                  shape: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minWidth: double.infinity,
                  height: MediaQuery.of(context).size.height/14,
                  child: const Text('Sign Up',style: TextStyle(
                      color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold
                  ),),
                ),),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Row(
                    children: [
                      Container(

                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/24,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                spreadRadius: 5,
                                offset: Offset(2,2),
                              )
                            ]
                        ),
                        child:const  Center(child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),),
                      ),
                      const SizedBox(width: 14,),
                      Container(

                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/24,
                        decoration:const  BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                spreadRadius: 5,
                                offset: Offset(2,2),
                              )
                            ]
                        ),
                        child: Center(child: FaIcon(FontAwesomeIcons.google , color: Colors.redAccent.withOpacity(0.5),),),
                      ),
                      const SizedBox(width: 14,),
                      Container(

                        width: MediaQuery.of(context).size.width/10,
                        height: MediaQuery.of(context).size.height/24,

                        decoration:const  BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                spreadRadius: 5,
                                offset: Offset(2,2),
                              )
                            ]
                        ),
                        child: const Center(child: FaIcon(FontAwesomeIcons.github),),
                      ),
                    ],
                  ),
                  const  SizedBox(),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Row(
                    children: [
                      const Text('Already have Account :'),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
                      },
                          child:const  Text('Log In')

                      ),
                    ],
                  ),
                  const SizedBox(),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
