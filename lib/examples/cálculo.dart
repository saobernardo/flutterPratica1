import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/consumo_list.dart';

final consumos = ConsumoList();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double consumo = 0;

  _handleConsumoField(String text) {
    setState(() {
      if (text != '') {
        consumo = double.parse(text);
      } else {
        consumo = 0;
      }
    });
  }

  _handleRegistrarButton() {
    if (consumo > 0) {
      consumos.addConsumo(consumo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Observer(
            builder: (_) => Column(
                  children: [
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'Qual foi o consumo da viagem?'),
                      keyboardType: TextInputType.number,
                      onChanged: _handleConsumoField,
                    ),
                    ElevatedButton(
                      child: Text('Registrar $consumo'),
                      onPressed: _handleRegistrarButton,
                    ),
                    ElevatedButton(
                      child: Text('Limpar dados'),
                      onPressed: consumos.limpar,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Text('Consumos registrados'),
                            Text('${consumos.list.length}')
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Text('Consumo médio geral'),
                            Text('${consumos.mediaGeral}')
                          ],
                        ))
                      ],
                    ),
                    Text('\n\n Registro:'),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: consumos.list.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          return Text('- ${consumos.list[index]}');
                        },
                      ),
                    )
                  ],
                )));
  }
}
