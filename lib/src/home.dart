import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: Text('Bem-vindo ao app', style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}