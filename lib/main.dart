import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'stores/contador.dart';
//import 'src/models/contador.dart';

part 'src/home.dart';
part 'src/sobre.dart';

final contador = Contador();

void main() => runApp(MyApp()
  /*MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Contador()),
      ChangeNotifierProvider(create: (context) => NomeDado()),
    ],
    child: MyApp(),
  )*/
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/sobre': (context) => SobrePage()
      },
      initialRoute: '/home',
    );
  }

}