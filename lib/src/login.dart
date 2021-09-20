import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override 
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Digite seu e-mail'
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Você precisa digitar um e-mail';
                  }
                  return null;
                },
                onSaved: (txt){
                  setState(() {
                    email = txt!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Digite sua senha'
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Você precisa digitar uma senha';
                  }
                  if(value.length < 4){
                    return 'Senha muito curta. Pelo menos 5 caracteres';
                  }
                  return null;
                },
                onSaved: (txt){
                  setState(() {
                    senha = txt!;
                  });
                },
              ),
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                  }
                },
              ),

              Text('E-mail: $email'),
              Text('Senha: $senha')
            ],
          ),
        ),
      ),
    );
  }
}