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
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ItemLista(largura: 150, color: Colors.pink, altura: 150),
            ItemLista(largura: 200, color: Colors.green, altura: 150),
            ItemLista(largura: 150, color: Colors.blue, altura: 150),
            ItemLista(largura: 200, color: Colors.yellow, altura: 150),
            ItemLista(largura: 150, color: Colors.purple, altura: 150)
          ],
        )
      )
    );
  } 
}

class ItemLista extends StatelessWidget{
  ItemLista({
    required this.largura,
    required this.color,
    this.altura = 0
  });

  final double largura;
  final Color color;
  final double altura;

  @override 
  Widget build(BuildContext context){
    return Container(
      width: largura,
      color: color,
      height: altura
    );
  }
}