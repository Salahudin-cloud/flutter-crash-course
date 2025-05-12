import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strenght = 1;
  int sugars = 0;

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
            if (strenght == 0)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[400],
                colorBlendMode: BlendMode.multiply,
              )
            else
              for (int i = 0; i < strenght; i++)
                Image.asset(
                  'assets/img/coffee_bean.png',
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
                  setState(() {
                    if (strenght > 0) {
                      strenght -= 1;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Can't descrese coffe anymore"),
                        duration: Duration(milliseconds: 500),
                      ));
                    }
                  });
                },
                child: const Text(
                  "-",
                )),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[800],
                    foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    strenght += 1;
                  });
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
            if (sugars == 0)
              const Text("No sugars..",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            for (int i = 0; i < sugars; i++)
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
                  setState(() {
                    if (sugars == 0) {
                      sugars = 0;
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Can't descrese sugar anymore"),
                        duration: Duration(milliseconds: 500),
                      ));
                    } else {
                      sugars -= 1;
                    }
                  });
                },
                child: const Text(
                  "-",
                )),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[800],
                    foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    sugars += 1;
                  });
                },
                child: const Text("+")),
          ],
        )
      ],
    );
  }
}
