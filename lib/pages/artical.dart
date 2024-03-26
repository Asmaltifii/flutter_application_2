// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Artical extends StatelessWidget {
  const Artical({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ae.jpg"),
                      fit: BoxFit.cover),
                ),
                accountName: Text("data"),
                accountEmail: Text("@data"),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/energia.png"),
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text("Invontaire"),
                leading: Icon(Icons.inventory_outlined),
                onTap: () {},
              ),
              ListTile(
                title: Text("Stock"),
                leading: Icon(Icons.storage),
                onTap: () {},
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {},
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
