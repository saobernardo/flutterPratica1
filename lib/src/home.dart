import 'package:flutter/material.dart';
import './help.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a tela help'),
          onPressed: (){
            Navigator.pushNamed(context, '/help', arguments: ScreenArguments('Tela de Ajuda', 'Aqui estaria o conteúdo de uma página de ajuda'));
          },
        ),
      )
    );
  }
}