import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final colour;
  final cardChild;
  final onPress; //it must be has a type of [var or Function] but i let it final because i using l stless
  ReusableCard({required this.colour, required this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}
