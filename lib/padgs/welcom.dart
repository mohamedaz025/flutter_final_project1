// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';   


class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
        body: SizedBox(
          // color: Colors.blue,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   SizedBox(height: 20,)  ,        
                   Text("welcome",style: TextStyle(fontSize: 30,fontFamily: "font"),),
                   SizedBox(height: 20,)  ,
                   SvgPicture.asset("assets/icons/chat.svg", width: 300,),
                   SizedBox(height: 20,),
              
                   ElevatedButton(        //  لعمل زر بداخلة كلمة
                   onPressed: () {    //  تنفيذ الامر عند الضغط
                   Navigator.pushNamed(context, "/login"); // امر الانتقال لصفحة
                          },
                          style: ButtonStyle(    // لعمل استايل للزر
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding:  // لتحديد عرض وطول الزر   
                    MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                horizontal: 110,
                vertical: 10)),
              
                shape:    //  لعمل حواف مستديره للزر
                MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66))),
                ),
              
                          child: Text(   // للكتابة داخل الزر
                "log in",
                style: TextStyle(
                  fontSize: 19, color: Colors.white),
                          ),
                        ),
                          
                SizedBox(height: 20,),
              
                ElevatedButton(        //  لعمل زر بداخلة كلمة
                          onPressed: () {    //  تنفيذ الامر عند الضغط
                Navigator.pushNamed(context, "/singup"); // امر الانتقال لصفحة
                          },
                          style: ButtonStyle(    // لعمل استايل للزر
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                padding:  // لتحديد عرض وطول الزر   
                MaterialStateProperty.all(
                EdgeInsets.symmetric(
                horizontal: 110,
                vertical: 10)),
              
                shape:    //  لعمل حواف مستديره للزر
                MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66))),
                ),
              
                          child: Text(   // للكتابة داخل الزر
                "singup",
                style: TextStyle(
                  fontSize: 17, color: Colors.white),
                          ),
                        ),
              
                          
                
              
              
                  ],
                ),
              ),

              Positioned(
                child: Image.asset("assets/images/main_top.png",width: 111,),
              ),
              Positioned(
                          bottom: 0,
                child: Image.asset("assets/images/main_bottom.png",width: 111,),
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}