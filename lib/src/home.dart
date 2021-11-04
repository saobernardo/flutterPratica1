import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Center(
                  child:
                      Text('Bem-vindo ao app', style: TextStyle(fontSize: 30)),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sobre');
                  },
                  child: Text('Sobre o app')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/teste');
                  },
                  child: Text('Ir para teste')),
            ],
          ),
        ));
  }
}
