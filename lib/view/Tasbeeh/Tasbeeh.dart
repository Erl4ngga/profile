import 'package:flutter/material.dart';
import 'package:profile/view/HomePage.dart';

class TasbeehScreen extends StatelessWidget {
  const TasbeehScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Kontainer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[100],
          elevation: 0.0,
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ),
                );
              },
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          color: Colors.yellow[100],
          child: Center(
            child: Text(
              'Tasbeeh',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
