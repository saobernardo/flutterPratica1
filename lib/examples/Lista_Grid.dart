import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.red
            ),
            Container(
              color: Colors.blue
            ),
          ]
        )
      )
    );
  } 
}

