// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';

import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/inventaire.dart';

import 'package:flutter_application_1/pages/stock.dart';

class Artical extends StatefulWidget {
  const Artical({super.key});

  @override
  State<Artical> createState() => _ArticalState();
}

class _ArticalState extends State<Artical> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ae.jpg"),
                      fit: BoxFit.cover),
                ),
                accountName: Text(""),
                accountEmail: Text("@"),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/energia.png"),
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                title: Text("Inventory"),
                leading: Icon(Icons.inventory_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Inventaire()));
                },
              ),
              ListTile(
                title: Text("Stocks"),
                leading: Icon(Icons.storage),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stock()));
                },
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                title: Text("Log out"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text(
            "Artical",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 35, fontFamily: "font"),
          ),
        ),
      ),
    );
  }
}
