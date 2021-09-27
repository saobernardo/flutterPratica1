part of '../main.dart';

class SobrePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre Page')
      ),
      body: Observer(
        builder: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contagem: '),
              Text('${contador.valor}'),
              ElevatedButton(
                child: Text('Aumentar Contagem'),
                onPressed: contador.aumentar,
              )
            ],
            
          ),
        ),
      )
    );
  }
}