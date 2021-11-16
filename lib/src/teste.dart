import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void enviaPost(String titulo, String corpo) async {
  final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      body: {'title': titulo, 'body': corpo, 'userId': '6'});

  if (response.statusCode == 201) {
    print(response.body);
  } else {
    throw Exception("Falhou na requisição");
  }
}

class TestePage extends StatefulWidget {
  @override
  _TestePage createState() => _TestePage();
}

class _TestePage extends State<TestePage> {
  late final String titulo;
  late final String corpo;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Teste'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Digite o Título'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Digite um Título';
                  }
                  return null;
                },
                onSaved: (t) {
                  setState(() {
                    titulo = t!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Digite o Corpo'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Digite um Corpo';
                  }
                  return null;
                },
                onSaved: (c) {
                  setState(() {
                    corpo = c!;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      enviaPost(titulo, corpo);
                    }
                  },
                  child: Text('Enviar'))
            ],
          ),
        ),
      ),
    );
  }
}
