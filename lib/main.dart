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
        body: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/kof.jpg')),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('KOF \'96' ,style: textStyleName),
                        Text('Osaka, Japan', style: textStyleLocation)
                      ]
                    )
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      Text('9.4')
                    ],

                  )
                ]
              )
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Botao(icon: Icons.call, text: 'Llamar'),
                  Botao(icon: Icons.location_on, text: 'Dirección'),
                  Botao(icon: Icons.share, text: 'Compartir')
                ]
              )
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('The King of Fighters nasceu de um crossover entre outras aclamadas séries de luta da época. O jogo pegou emprestado alguns personagens dos sucessos Fatal Fury (de onde vieram os populares Mai Shiranui e Terry Bogard), Art of Fighting (Ryo Sakazaki e Robert Garcia), Ikari Warriors (Ralf Jones, Clark Still e Heidern) e Psycho Soldier (Athena Asamiya, Sie Kensou e Chin Gentsai), e acrescentou outros inéditos, como o protagonista Kyo Kusanagi.')
            )
          ]
        ),
      )
    );
  } 
}

class Botao extends StatelessWidget{
  Botao({
    required this.icon,
    required this.text
  });
  
  final IconData icon;
  final text;

  onPress(){
    switch(text){
      case 'Llamar':
        print('Botón llamar');
      break;
      case 'Dirección':
        print('Botón Dirección');
      break;
      case 'Compartir':
        print('Botón compartir');
      break;
    }
  }

  @override
  Widget build(BuildContext context){
    return Expanded(
            child: TextButton(
              onPressed: onPress, 
              child: Column(
                children: [
                  Icon(icon, color: Colors.blue),
                  Text(text)
                ],
              )
            )
          );
  }
}