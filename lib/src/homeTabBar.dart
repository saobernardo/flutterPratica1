import 'package:flutter/material.dart';
import './home.dart';
import './help.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 2'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.help))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            HelpPage()
          ],
        ),
      )
    );
  }
}