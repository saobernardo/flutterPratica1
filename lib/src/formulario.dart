import 'package:flutter/material.dart';

class Formulario extends StatefulWidget{
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            //obscureText: true,
            decoration: InputDecoration(
              hintText: 'Digite seu nome'
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Você precisa digitar um nome';
              }
              return null;
            },
          ),
          ElevatedButton(
            child: Text('Enviar'),
            onPressed: (){
              if(_formKey.currentState!.validate()){
                print('Rolou');
              }
            },
          )
        ],
      ),
    );
  }
}