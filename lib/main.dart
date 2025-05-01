import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sanbox",
              style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.grey,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              color: Colors.grey[600],
              child: const Text(
                "Hello World",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              color: Colors.grey[500],
              child: const Text(
                "Hello World",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              color: Colors.grey[400],
              child: const Text(
                "Hello World",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
