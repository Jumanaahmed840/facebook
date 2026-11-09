 import 'package:facebook_screen/homeScreen.dart';
import 'package:facebook_screen/loginScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
 }

 class myApp extends StatelessWidget {
   const myApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute:Homescreen.routeName ,
       routes: {
         Loginscreen.routeName: (_) => Loginscreen() ,
         Homescreen.routeName: (_)=> Homescreen(),
       }
     );
   }
 }
