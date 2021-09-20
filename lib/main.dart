import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/home.dart';
import 'src/help.dart';
import 'src/models/contador.dart';
import 'src/models/nome.dart';
import 'src/login.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Contador()),
      ChangeNotifierProvider(create: (context) => NomeDado()),
    ],
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/help': (context) => HelpPage(),
        '/login': (context) => LoginPage(),
      },
      initialRoute: '/home',
    );
  }


}