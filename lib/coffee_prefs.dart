import 'package:coffee_card/style/button_styled.dart';
import 'package:coffee_card/style/text_styled.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strenght = 1;
  int sugars = 0;

  void increaseCoffe() {
    setState(() {
      strenght += 1;
    });
  }

  void decreaseCoffe() {
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
  }

  void increaseSugars() {
    setState(() {
      sugars += 1;
    });
  }

  void decreaseSugars() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const TextStyled("Strength: "),
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
            ButtonStyled(const TextStyled("-"), decreaseCoffe),
            const SizedBox(
              width: 10,
            ),
            ButtonStyled(const TextStyled("+"), increaseCoffe),
          ],
        ),
        Row(
          children: [
            const TextStyled("Sugar: "),
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
            ButtonStyled(const TextStyled("-"), decreaseSugars),
            const SizedBox(
              width: 10,
            ),
            ButtonStyled(const TextStyled("+"), increaseSugars),
          ],
        )
      ],
    );
  }
}
