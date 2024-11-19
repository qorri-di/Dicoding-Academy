import 'package:flutter/material.dart';
import 'package:myaps/WidgetScaffold.dart';

void main() => runApp(WidgetContainerDekor());

class WidgetContainerDekor extends StatelessWidget{
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
        decoration: BoxDecoration(
          color: Colors.green,
          // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3,6),
              blurRadius: 10,
            ),
          ],
          border: Border.all(
            color: Colors.yellow,
            width: 3
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}