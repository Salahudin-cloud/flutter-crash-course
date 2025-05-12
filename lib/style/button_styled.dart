import 'package:flutter/material.dart';

class ButtonStyled extends StatelessWidget {
  const ButtonStyled(this.child, this.btnFunction, {super.key});

  final Widget child;
  final void Function() btnFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown[800], foregroundColor: Colors.white),
        onPressed: btnFunction,
        child: child);
  }
}
