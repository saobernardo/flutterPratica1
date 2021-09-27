import 'package:flutter/material.dart';

class ContadorNotifier with ChangeNotifier{
  int valor = 0;

  void aumentar() {
    valor++;
    notifyListeners();
  }
  
}