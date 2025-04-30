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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey[500],
              width: 100,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Box 1",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.grey[400],
              width: 150,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Box 2",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.grey[300],
              width: 200,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Box 1",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
