// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/welcom.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Welcome()),
            );
          },
          backgroundColor: Colors.red[99],
          child: Icon(Icons.home),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text(
            'Sign up',
            style: TextStyle(
                fontSize: 35, fontFamily: "font", fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/energia.png",
                  height: 120,
                  width: 120,
                ),
                SizedBox(height: 50),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(22)),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name :",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.person),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(22)),
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Prename :",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.person),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(22)),
                    width: 350,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "E-mail :",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.mail),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(22)),
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password :",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(22)),
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirme Password :",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    )),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red[99]),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 44,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22))),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?"),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Login())));
                        },
                        child: Text(
                          " Log in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
