// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/welcom.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
       
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
      home: const Welcome(),
      routes: {
        '/signup':(context) => const Signup(),
        '/login':(context) => const Login(),
      
      },
        
      ),
    );
    }


    
  }

