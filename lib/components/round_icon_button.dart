import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final icon;
  final onPressed, onLongPress;
  RoundIconButton({this.icon, this.onPressed, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onLongPress: onLongPress,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
