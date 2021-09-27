import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../src/models/contador.dart';
import '../src/models/nome.dart';
import '../src/formulario.dart';

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
        child: Column(
          children: [
            /*Container(
              height: 200,
              child: Text('Bem-vindo ao app', style: TextStyle(fontSize: 30)),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Digite seu nome'),
              onChanged: (text){
                Provider.of<NomeDado>(context, listen: false).mudarNome(text);
              },
            ),*/

            Text('Contagem:'),
            Consumer<NomeDado>(
              builder: (context, nomedado, child) => Text('Meu nome é: ${nomedado.nome}')
            ),
            ElevatedButton(child: 
              Text('Aumentar'), 
              onPressed: (){ 
                Provider.of<ContadorNotifier>(context, listen: false).aumentar();
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