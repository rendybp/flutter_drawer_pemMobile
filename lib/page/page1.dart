import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Testing and debugging'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: Center(
      child: Text("Ini adalah halaman utama dan dibuat oleh Rendi Buana Perdana 210103115",
      style: TextStyle(fontSize: 20),
      ),
    )
  );
}