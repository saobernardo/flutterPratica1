import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: ElevatedButton(
        child: Text('Mostrar Snackbar'),
        onPressed: (){
          var snackBar = SnackBar(
            content: Text('Testando 1, 2, 3'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: (){
                
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      ),
    );
  }
}