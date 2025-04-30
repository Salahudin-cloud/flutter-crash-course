import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: const Text(
            "My Coffee Card",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown[700]),
      body: const Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[300],
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
      child: const Text(
        "Hello World",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
