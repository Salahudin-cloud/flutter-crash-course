import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "Strength: ",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            Image.asset('assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[400],
                colorBlendMode: BlendMode.multiply),
            const SizedBox(
              width: 50,
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[800],
                    foregroundColor: Colors.white),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Inc Strength 1"),
                      duration: Duration(milliseconds: 500),
                    ),
                  );
                },
                child: const Text("+")),
          ],
        ),
        Row(
          children: [
            const Text(
              "Sugar: ",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const Text(
              "4",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 25,
              color: Colors.brown[400],
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(
              width: 50,
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[800],
                    foregroundColor: Colors.white),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Inc Sugar 1"),
                      duration: Duration(milliseconds: 500),
                    ),
                  );
                },
                child: const Text("+")),
          ],
        )
      ],
    );
  }
}
