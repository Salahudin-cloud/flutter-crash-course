import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "My Coffee Card",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown[700]),
      body: Container(
        color: Colors.purple[400],
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
        child: const Text(
          "Hello Wolrd",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
