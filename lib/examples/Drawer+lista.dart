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
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Cabeçalho'),
                decoration: BoxDecoration(
                  color: Colors.green
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('${contatos[0]}'),
                trailing: TextButton(onPressed: (){print('Ligar p/ ${contatos[0]}');}, child: Icon(Icons.phone)),
                onTap: (){ print(contatos[0]); },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('${contatos[1]}'),
                trailing: TextButton(onPressed: (){print('Ligar p/ ${contatos[1]}');}, child: Icon(Icons.phone)),
                onTap: (){ print(contatos[1]); },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('${contatos[2]}'),
                trailing: TextButton(onPressed: (){print('Ligar p/ ${contatos[2]}');}, child: Icon(Icons.phone)),
                onTap: (){ print(contatos[2]); },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('${contatos[3]}'),
                trailing: TextButton(onPressed: (){print('Ligar p/ ${contatos[3]}');}, child: Icon(Icons.phone)),
                onTap: (){ print(contatos[3]); },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('${contatos[4]}'),
                trailing: TextButton(onPressed: (){print('Ligar p/ ${contatos[4]}');}, child: Icon(Icons.phone)),
                onTap: (){ print(contatos[4]); },
              ),
            ]
          ),
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
        ),
        
      )
    );
  } 
}

