
import 'package:flutter/material.dart';


class PayloadExtraScreen extends StatelessWidget {
  const PayloadExtraScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Screen_height = MediaQuery.of(context).size.height;
    final Screen_width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(),
              Container(
                height: Screen_height/2.1,
                width: Screen_width/1.5,
                decoration: BoxDecoration(
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
              SizedBox(),SizedBox(),SizedBox(),
              MaterialButton(
                onPressed: (){},
                minWidth: Screen_width/1.2,
                height: Screen_height/13,
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
