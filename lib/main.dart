import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [
          _builDisplay(),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _builDisplay() {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.all(20),
      height: 90,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.black),
        color: Colors.green,
      ),
      child: const Text('55+26',
          style: TextStyle(fontSize: 30, color: Colors.white),
          textAlign: TextAlign.end),
    );
  }

  Widget _buildButton() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton('7'),
          buildButton('8'),
          buildButton('9'),
          buildButton('/'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton('4'),
          buildButton('5'),
          buildButton('6'),
          buildButton('*'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton('1'),
          buildButton('2'),
          buildButton('3'),
          buildButton('-'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton('C'),
          buildButton('0'),
          buildButton('='),
          buildButton('+'),
        ],
      ),
    ]);
  }

  Widget buildButton(String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}
