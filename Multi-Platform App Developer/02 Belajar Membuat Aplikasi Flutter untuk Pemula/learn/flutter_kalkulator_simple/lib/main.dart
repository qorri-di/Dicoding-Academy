import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const judul = 'Flutter Kalkulator Sederhana';
    return MaterialApp(
      title: judul,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formkey = GlobalKey<FormState>();
  int _varA = 0;
  int _varB = 0;
  int _varC = 0;
  void sum(a,b){
    _varC = a + b;
  }
//inputan variabel pertama
  Widget _textA() =>
      TextFormField(
        decoration: const InputDecoration(
            labelText: 'Variabel A'
        ),
        onSaved: (String? value){
          setState(() => _varA = int.parse(value!));
        },
      );
  //inputan variabel kedua
  Widget _textB() =>
      TextFormField(
        decoration: const InputDecoration(
            labelText: 'Variabel B'
        ),
        onSaved: (String? value){
          setState(() => _varB = int.parse(value!));
        },
      );
//Hasil penjumlahan variabel pertama + kedua
  Widget _submitBTN() => ElevatedButton(
      onPressed: (){
        if(_formkey.currentState!.validate()){
          _formkey.currentState!.save();
          sum(_varA, _varB);
        }
      },
      child: Text('Hitung')
  );
//form
  Widget _form() => Form(
    key: _formkey,
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              child: _textA(),
            ),
            Text('+'),
            SizedBox(
              width: 80,
              child: _textB(),
            ),
          ],
        ),
        _submitBTN(),
        Text(_varC.toString())
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Kalkulator Sederhana'),
      ),
      body: _form(),
    );
  }
}