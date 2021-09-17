import 'package:flutter/material.dart';

class NomeDado with ChangeNotifier{
  String nome = '';

  void mudarNome(novoNome){
    nome = novoNome;
    notifyListeners();
  }
}