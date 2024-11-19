import 'package:flutter/material.dart';
import 'package:myaps/WidgetScaffold.dart';

void main() => runApp(WidgetContainer());

class WidgetContainer extends StatelessWidget{
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
        title: Text('Coba Container'),
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
      body: Container(
        child: Text('Hi guys!', style: TextStyle(fontSize: 40),),
        color: Colors.green,
        // width: 200,
        // height: 100,
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}