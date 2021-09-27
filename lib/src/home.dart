part of '../main.dart';

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
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
              ),
              ElevatedButton(
                child: Text('Tela sobre'),
                onPressed: (){
                  Navigator.pushNamed(context, '/sobre');
                },
              )
            ],
            
          ),
        ),
      )
    );
  }
}