import 'package:flutter/material.dart';
import 'package:flutter_final_project1/padgs/Singup.dart';
import 'package:flutter_final_project1/padgs/login.dart';
import 'package:flutter_final_project1/padgs/welcom.dart'; // أساس الكود

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        initialRoute: "/", // اسم اول صفحة تفتح للمستخدم
        routes: {
          // تعريف الصفحات
          "/": (context) => const Welcom(), // تعريف الصفحات
          "/login": (context) => const Login(),
          "/singup": (context) => const Singup(),
        }
        );
  }
}
