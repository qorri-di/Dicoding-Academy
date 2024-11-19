import 'package:flutter/material.dart';
import 'package:myaps/WidgetScaffold.dart';

void main() => runApp(WidgetCenter());

class WidgetCenter extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.red,
          ),
          onPressed: (){},
        ),
        title: Text('Coba Center Widget'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: Text('Text Berada pada di tengah'),
      ),
    );
  }
}