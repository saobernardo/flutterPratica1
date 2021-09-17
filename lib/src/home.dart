import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/contador.dart';
import 'models/nome.dart';

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Digite seu nome'),
              onChanged: (text){
                Provider.of<NomeDado>(context, listen: false).mudarNome(text);
              },
            ),

            Text('Contagem:'),
            Consumer<NomeDado>(
              builder: (context, nomedado, child) => Text('Meu nome é: ${nomedado.nome}')
            ),
            ElevatedButton(child: 
              Text('Aumentar'), 
              onPressed: (){ 
                Provider.of<Contador>(context, listen: false).aumentar();
              },
            ),
            ElevatedButton(child: 
              Text('Ir para Help'), 
              onPressed: (){ 
                Navigator.pushNamed(context, '/help');
              },
            ),
          ],
        ),
      ),
    );
  }
}