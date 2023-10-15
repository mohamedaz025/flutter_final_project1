// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart'; 
import 'package:flutter_svg/svg.dart'; 

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
       floatingActionButton: //  لعمل زر عائم
          FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, "/");   //   امر التوجه لصفحه وتترك الصفحع الحالية مفتوحة
          Navigator.pop(context, "/");      //  امر التوجه لصفحه مع قفل الصفحة الحالية
        },
        child: Icon(Icons.home), // لاضافة ايكونة داخل الزر
        backgroundColor: Colors.purple[400], // لتعير لون الزر
      ),


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
                   Text("login",style: TextStyle(fontSize: 30,fontFamily: "font"),),
                   SizedBox(height: 20,)  ,
                   SvgPicture.asset("assets/icons/login.svg", width: 300,),
                   SizedBox(height: 20,),



              Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(50)),
              width: 266,
              child: TextField(
                //  لعمل مربع ادخال
                obscureText: false, //  لجعل المدخلات مشفره
                keyboardType: TextInputType.emailAddress,   //  للتحكم في الكيبورد
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "email:", // ملاحظه داحل التيكست فيلد
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  // labelText: "Password:",     // ملاحظه اعلي التيكست فيلد
                  // labelStyle: TextStyle(color: Colors.blue,fontSize: 15),
                  prefixIcon: Icon(Icons.person), // لعمل ايكونه داخل التيكست فيلد
                  // suffixIcon: Icon(Icons.visibility), //  لعمل ايكونة داخل التيكست فيلد علي اليمين
                  // OutlineInputBorder(),
                  // icon: Icon(Icons.email),    // لعمل ايكونه خارج التيكست فيلد
                  border: InputBorder.none,
                ),
              ),
            ),
              SizedBox(height: 20,),
              Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(50)),
              width: 266,
              child: TextField(
                //  لعمل مربع ادخال
                obscureText: true, //  لجعل المدخلات مشفره
                // keyboardType: TextInputType.number,   //  للتحكم في الكيبورد
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Password:", // ملاحظه داحل التيكست فيلد
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  // labelText: "Password:",     // ملاحظه اعلي التيكست فيلد
                  // labelStyle: TextStyle(color: Colors.blue,fontSize: 15),
                  prefixIcon: Icon(Icons.lock), // لعمل ايكونه داخل التيكست فيلد
                  suffixIcon: Icon(Icons
                      .visibility), //  لعمل ايكونة داخل التيكست فيلد علي اليمين
                  // OutlineInputBorder(),
                  // icon: Icon(Icons.email),    // لعمل ايكونه خارج التيكست فيلد
                  border: InputBorder.none,
                ),
              ),
            ),
              SizedBox(height: 20,),
              ElevatedButton(        //  لعمل زر بداخلة كلمة
                   onPressed: () {    //  تنفيذ الامر عند الضغط
                    
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
             SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text("Dont't have an account? "),

                  GestureDetector(     //  لعمل تيكتس يمكن الضغط علية
                    onTap: (){
                      Navigator.pushNamed(context, "/singup");
                    },
                    child: Text(" sing up", style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),)),
                ],
              )    
        
              
                          
                
              
              
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