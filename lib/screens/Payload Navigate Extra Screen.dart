
import 'package:flutter/material.dart';


class PayloadExtraScreen extends StatelessWidget {
  const PayloadExtraScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              Container(
                height: screenHeight/2.1,
                width: screenWidth/1.5,
                decoration: const BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                     color: Colors.black12 ,
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0,0)
                    )
                  ],
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/poster.jpg'),
                  )
                ),
              
              ),
              const SizedBox(),const SizedBox(),const SizedBox(),
              MaterialButton(
                onPressed: (){},
                minWidth: screenWidth/1.2,
                height: screenHeight/13,
                color: Colors.lightBlueAccent,
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.transparent)
                ),
                child: const Text('Watch Now',style: TextStyle(
                  color: Colors.white,fontSize: 23,fontFamily: 'K-Thin',fontWeight: FontWeight.bold
                ),),

              ),



            ],
          ),
        ),
      ),
    );
  }
}
