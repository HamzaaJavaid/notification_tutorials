import 'package:firebase_messaging/firebase_messaging.dart';
import "package:flutter/material.dart";
import 'package:intro_slider/intro_slider.dart';
import 'package:notification_app/State Managment//Login%20Provider.dart';
import 'package:notification_app/State%20Managment/Account%20Create%20Provider.dart';
import 'package:notification_app/screens/Auth%20Screens/login.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest_10y.dart' ;
import 'package:firebase_core/firebase_core.dart';



void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundNotificationHandler);
  initializeTimeZones();
  runApp(const MyApp());
}


@pragma("vm:entry-point")
Future<void> backgroundNotificationHandler(RemoteMessage message)async {
  await Firebase.initializeApp();
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>email_provider()),
      ChangeNotifierProvider(create :(_)=>password_provider()),
      ChangeNotifierProvider(create: (_)=>username_provider(),),
      ChangeNotifierProvider(create: (_)=>signup_email_provider()),
      ChangeNotifierProvider(create: (_)=>signup_password_provider()),
      ChangeNotifierProvider(create: (_)=>confirmpassword_provider()),
      ChangeNotifierProvider(create: (_)=>checkboxProvider()),
      

    ],
    builder: (context,child){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SignIn(),
      );
    },
    );
  }
}



class IntroScreens extends StatefulWidget {
  const IntroScreens({Key? key}) : super(key: key);

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "Cloud Notification",
        description:
        "\n\n\n\n\n\n\n\nAllow User to recieve notification from Network Server to its relative \nlocal Device",
        pathImage: "assets/images/1.png",
        backgroundColor: Colors.green,
        styleDescription: TextStyle(
          color: Colors.white,
          fontSize:24
        ),
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize:24
        ),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Local Notifications",
        description:
        "\n\n\n\n\n\n\n\nAllow User to recieve Notification from its own Physical Device by invoking Hardware Functions",
        pathImage: "assets/images/2.png",
        backgroundColor: Colors.cyan,
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize:24
        ),
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize:24
        ),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Authentication Services",
        description:
        "\n\n\n\n\n\n\n\nSecure Authentication System to Ensure the sercurity of our services",
        pathImage: "assets/images/3.jpg",
        backgroundColor: Colors.white,
        styleDescription: TextStyle(
            color: Colors.black,
            fontSize:24
        ),
        styleTitle: TextStyle(
            color: Colors.black,
            fontSize:24
        ),
      ),
    );
  }

  void onDonePress() {
  
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
  }
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
