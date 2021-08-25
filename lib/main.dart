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
      theme: ThemeData(
        //brightness: Brightness.dark
        primaryColor: Colors.red,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(fontSize: 20)
        ),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.blue))
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Olá mundo'),
            )
          ],
        ),
      )
    );
  } 
}