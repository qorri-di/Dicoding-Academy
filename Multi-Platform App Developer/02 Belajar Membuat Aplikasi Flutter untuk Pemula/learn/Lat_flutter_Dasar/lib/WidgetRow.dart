import 'package:flutter/material.dart';

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
        title: Text('Coba Widget Row dan Column'),
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
      body:
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Icon(Icons.share),
      //     Icon(Icons.thumb_up),
      //     Icon(Icons.thumb_down),
      //   ],
      Column(
        children: <Widget>[
          Text(
        'Sebuah Judul',
        style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
          ),
          Text('Lorem ipsum dolor'),
        ],
      ),
    );
  }
}