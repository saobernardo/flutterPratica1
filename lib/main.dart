import 'package:flutter/material.dart';
import 'Exemplo.dart';

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
           children: [
              Image(
                //width: 100,
                image: AssetImage('assets/samael.jpg')
              ),
              Image.network('https://www.google.com.br/google.jpg')
           ],
        ),
      )
    );
 } 
}