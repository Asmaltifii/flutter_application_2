// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image:DecorationImage(
                  image: AssetImage("assets/images/ae.jpg"),
                  fit: BoxFit.cover
                  ),
                ),
                accountName: Text("data"), 
                accountEmail:Text("@data"),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/energia.png"),
                ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: (){
                    
                  },
                ),
                ListTile(
                  title: Text("Inventory"),
                  leading: Icon(Icons.inventory_outlined),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Stock"),
                  leading: Icon(Icons.storage),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Log out"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: (){},
                ),
          

            ],


          ),




        ),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info,
                  size: 40,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.red[300],
          title: Text(
            "Home",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 35,
                fontFamily: "font"),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 400,
            height: 650,
            // color: Colors.amber,
          
            child: Stack(
              children: [
              // Articals
              Positioned(left: 9,top: 9,height: 190, 
                  width: 160,
                child:
                Container(
                  color: Colors.white,
                  child: Column(
                  children: [
                  Text(
                    "Articals", 
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "font", fontSize: 25)
                    ,),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Image.asset("assets/images/liste.png", 
                    fit: BoxFit.cover,
                    height: 150, 
                    width: 150,
                    ),
                  ),
                  ],
                ),
                ),
              ),
            // inventaire
              Positioned( right: 9,top: 9,height: 190, 
                  width: 160,
                child:
                Container(
                  color: Colors.white,
                  child: Column(
                  children: [
                  Text(
                    "Inventory", 
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "font", fontSize: 25)
                    ,),
                  Image.asset("assets/images/inventaire.png", 
                  fit: BoxFit.cover,
                  height: 150, 
                  width: 150,
                  ),
                  ],
                ),
                ),
              ),
            // stock
              Positioned( left: 9,bottom: 230,height: 190, 
                  width: 160,
                child:
                Container(
                  color: Colors.white,
                  child: Column(
                  children: [
                  Text(
                    "Stocks", 
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "font", fontSize: 25)
                    ,),
                  Image.asset("assets/images/stock.png", 
                  fit: BoxFit.cover,
                  height: 150, 
                  width: 150,
                  ),
                  ],
                ),
                ),
              ),
              // setting
              Positioned( right: 9,bottom: 230,height: 190, 
                  width: 160,
                child:
                Container(
                  color: Colors.white,
                  child: Column(
                  children: [
                  Text(
                    "Setting", 
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "font", fontSize: 25)
                    ,),
                  Image.asset("assets/images/setting.png", 
                  fit: BoxFit.cover,
                  height: 150, 
                  width: 150,
                  ),
                  ],
                ),
                ),
              ),
              // about
              Positioned(left: 9,bottom: 9,height: 190, 
                  width: 160,
                child:
                Container(
                  color: Colors.white,
                  child: Column(
                  children: [
                  Text(
                    "About", 
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "font", fontSize: 25)
                    ,),
                  Image.asset("assets/images/about.png", 
                  fit: BoxFit.cover,
                  height: 150, 
                  width: 150,
                  ),
                  ],
                ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
