import 'package:flutter/material.dart';
import 'package:flutter2/src/home.dart';
import 'src/home.dart';

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
        body: HomePage()
      )
    );
  } 
}

