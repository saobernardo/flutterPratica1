import 'package:flutter/material.dart';
import '../Exemplo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 @override
 Widget build(BuildContext context){
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teste Flutter'),
        ),
        body: Column(
            children:[ 
              Exemplo(
                title: 'Texto 1',
                order: '1'
              ),
              Exemplo(
                title: 'Texto 2',
                order: '2'
              )
            ]
          ),
        )
    );
 } 
}