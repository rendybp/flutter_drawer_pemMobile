import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_drawer_coba/page/page1.dart';
import 'package:flutter_drawer_coba/page/page2.dart';
import 'package:flutter_drawer_coba/page/page3.dart';

void main() {
  runApp(MaterialApp(
      title: "Menu Drawer Flutter",
      //menghapus icon debug banner ketika nanti debug
      debugShowCheckedModeBanner: false,
      home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama Flutter"),
      ),
      body: Center(
        child: Text("Ini adalah halaman utama dan dibuat oleh Rendi Buana Perdana 210103115", 
        style: TextStyle(
          fontSize: 20
        )),
      ),
      //memberi button pada sebelah kiri appbar
      drawer: _buildDrawer(context),
    );
  }
}

//Widget builddrawer 
Widget _buildDrawer(BuildContext context){
  return SizedBox(
    //membuat menu drawer
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image(
              image: NetworkImage("https://cdn-icons-png.flaticon.com/512/1144/1144760.png")),
              accountName: Text("Rendi"),
              accountEmail: Text("rendibuanap@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn-icons-png.flaticon.com/512/8408/8408730.png"),
                  fit: BoxFit.cover)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Halaman 1"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
                },
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Halaman 2"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
                },
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Halaman 3"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.emoji_emotions),
                title: Text("Keluar"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
        ],
      ),
    ),
  );
}
