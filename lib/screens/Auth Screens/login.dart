
import 'package:flutter/material.dart';
import 'package:notification_app/State Managment//Login%20Provider.dart';
import 'package:notification_app/screens/Auth%20Screens/signUp%20Screen.dart';
import 'package:notification_app/screens/MainDashBoard/Dashboard.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    final emailProvideer = Provider.of<email_provider>(context,listen: false);
    final passwordProvideer = Provider.of<password_provider>(context , listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/12,),
              Center(
                child: Image.asset(
                  "assets/images/auth.jpg",
                  height: MediaQuery.of(context).size.height/4,


                ),


              ),
              SizedBox(height: MediaQuery.of(context).size.height/24,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 40,),
                child:Row(children: [
                  Text('Email',style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
                ],)
                ,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                  child: Consumer<email_provider>(
                    builder: (context,value,child){
                      return TextField(

                        onChanged: (value){
                          emailProvideer.set_email_value(value);
                        },
                        decoration: InputDecoration(
                          hintText: emailProvideer.get_email_value,
                          labelText: "Email",
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.pink,width: 1),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.orange,width: 1),
                          ),
                        ),

                      );
                    },
                  )
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 40,),
                child:Row(children: [
                  Text('Password',style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
                ],)
                ,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                  child: Consumer<password_provider>(
                    builder: (context , value ,  child){
                      return TextField(
                        onChanged: (value){
                          passwordProvideer.set_passsword_value(value);
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: passwordProvideer.get_password_value,
                          labelText: "Password",
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.pink,width: 1),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.green
                                ,width: 1),
                          ),
                        ),

                      );
                    },
                  )
              ),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 50),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainDashboard()));
                  },
                  color: Colors.orangeAccent,
                  height: MediaQuery.of(context).size.height/16,
                  minWidth: MediaQuery.of(context).size.width/1.2,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text("Sign - In",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),),
                      Icon(Icons.arrow_forward_rounded,color: Colors.white,),


                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/20,),
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
                        child: const Center(child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),),
                      ),
                      const SizedBox(width: 14,),
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
                        child: Center(child: FaIcon(FontAwesomeIcons.google , color: Colors.redAccent.withOpacity(0.5),),),
                      ),
                      const SizedBox(width: 14,),
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
                        child: const Center(child: FaIcon(FontAwesomeIcons.github),),
                      ),
                    ],
                  ),
                  const SizedBox(),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Divider(
                indent: MediaQuery.of(context).size.width/10,
                endIndent: MediaQuery.of(context).size.width/10,
                color: Colors.black26,
                thickness: 0.8,
              ),
               SizedBox(height: MediaQuery.of(context).size.height/30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const   SizedBox(),
                  Row(
                    children: [
                      const Text('Dont have account :'),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                      },
                          child: const Text('Sign Up')

                      ),
                    ],
                  ),
                  const SizedBox(),
                ],
              ),





            ]
        ),
      ),

    )
    ;
  }
}
