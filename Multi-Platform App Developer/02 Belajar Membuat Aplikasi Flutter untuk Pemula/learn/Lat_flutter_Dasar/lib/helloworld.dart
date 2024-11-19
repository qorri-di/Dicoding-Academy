import 'package:flutter/material.dart';

void main() => runApp(HelloWorld());

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: Center(
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}