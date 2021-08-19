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
          title: Text('Teste Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Clique no botão abaixo'),
              TextButton(
                onPressed: () {
                  print('Apertou o botão');
                }, 
                child: Text('Clique aqui')
              )
            ]
          ),
        )
      )
    );
 } 
}