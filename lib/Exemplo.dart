import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget{
  //construtor
  Exemplo({
    this.title,
    this.order,
  });

  var title;
  var order;
  Function? onPress (){
    print('Apertado botão ' + order);
  }

  @override
  Widget build(BuildContext context){

    if(title == null){
      title = 'Título de exemplo';
    }

    return Container(
      width: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: Colors.red,
      child: Column(
        children: [
          Text(this.title),
          TextButton(
            child: Text('Clique aqui'),
            onPressed: this.onPress,
          )
        ],
      )
    );
  }
}