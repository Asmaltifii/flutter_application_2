// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

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
            "Stock",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 35, fontFamily: "font"),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Reference article",
              style: TextStyle(fontFamily: "font", fontSize: 30),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Quantite Stock: ",
              style: TextStyle(fontFamily: "font", fontSize: 30),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            SizedBox(height:30),
            Text(
              "Quantite inventoriee :",
              style: TextStyle(fontFamily: "font", fontSize: 30),
            ),
            TextField(
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 100),

            Row(
              children: [
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Valide", 
                  style: TextStyle(fontSize: 30 , color: Colors.red[300]),
                  ),
                ),
                SizedBox(width: 50,),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Annuler", 
                  style: TextStyle(fontSize: 30 , color: Colors.grey[600]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
