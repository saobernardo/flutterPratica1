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
        body: Column(
          children: [

            Row(
              children: [
                Expanded(
                  child: Text('Nome')
                ),
                Expanded(
                  child: Text('Sobrenome')
                ),
                Expanded(
                  child: Text('Idade')
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Text('Lucas')
                ),
                Expanded(
                  child: Text('São Bernardo')
                ),
                Expanded(
                  child: Text('27')
                )
              ],
            ),
          ]
        )
      )
    );
 } 
}