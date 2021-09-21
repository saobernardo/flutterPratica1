import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../stores/contador.dart';

final contador = Contador();

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Observer(
        builder: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contagem: '),
              Text('${contador.valor}'),
              ElevatedButton(
                child: Text('Aumentar Contagem'),
                onPressed: contador.aumentar,
              )
            ],
            
          ),
        ),
      )
    );
  }
}