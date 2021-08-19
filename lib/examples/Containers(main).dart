import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  botaoAction() {
    print('Clicou no botão');
  }

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
                onPressed: botaoAction, 
                child: Text('Clique aqui')
              )
            ]
          ),
        )
      )
    );
 } 
}