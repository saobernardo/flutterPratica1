import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/nome.dart';
import './formulario.dart';

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
            Container(
              height: 200,
              child: Text('Bem-vindo ao app', style: TextStyle(fontSize: 30)),
            ),

            ElevatedButton(
              child: Text('Fazer Login'),
              onPressed: () {
                 Navigator.pushNamed(context, '/login');
              }
            ),
          ],
        ),
      ),
    );
  }
}