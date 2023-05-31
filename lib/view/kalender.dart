import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Kontainer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[100], // Warna latar belakang AppBar
          elevation: 0.0,
          title: Text('My App'),
        ),
        body: Container(
          color: Colors.yellow[100], // Warna latar belakang body
          child: Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
