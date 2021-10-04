import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final contatos = [
    'Lucas',
    'Leo',
    'Arthur',
    'BH',
    'Christian'
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (ctx, index){
            return ListTile(
              leading: Icon(Icons.person),
              title: Text('${contatos[index]}'),
              trailing: TextButton(onPressed: (){print('Ligar p/ ${contatos[index]}');}, child: Icon(Icons.phone)),
            );
          },
        )
      )
    );
  } 
}

