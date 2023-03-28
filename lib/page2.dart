import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua Flutter"),
      ),
      body: Center(
        child: Text("Ini Adalah Halaman Kedua Flutter", 
        style: TextStyle(
          fontSize: 20
        )),
      ),
      //memberi button pada sebelah kiri appbar
      drawer: _buildDrawer(context),
    );
  }
}

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
                title: Text("Beranda"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Pegawai"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text("Transaksi"),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.emoji_emotions),
                title: Text("Profil"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Tentang"),
                onTap: (){},
              ),
        ],
      ),
    ),
  );
}
