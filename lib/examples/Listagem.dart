import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final textStyleName = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
  final textStyleLocation = TextStyle(fontSize: 16, color: Colors.grey);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: ListView(
          //scrollDirection: Axis.horizontal,
          children: [
            /*ItemLista(altura: 200, color: Colors.pink),
            ItemLista(altura: 200, color: Colors.green),
            ItemLista(altura: 200, color: Colors.blue),
            ItemLista(altura: 200, color: Colors.yellow),
            ItemLista(altura: 200, color: Colors.purple),*/
            ListTile(
              title: Text('Nome'),
              leading: Icon(Icons.map),
              trailing: Text('Selecionado'),
            ),
            ListTile(
              title: Text('Nome'),
              leading: Icon(Icons.map),
              trailing: TextButton(onPressed: () {print('Pressed');}, child: Text('Checked')),
            )
          ],
        )
      )
    );
  } 
}

class ItemLista extends StatelessWidget{
  ItemLista({
    required this.altura,
    required this.color
  });

  final double altura;
  final Color color;

  @override 
  Widget build(BuildContext context){
    return Container(
      height: altura,
      color: color,
    );
  }
}