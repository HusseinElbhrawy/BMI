import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final buttonTitle;

  final onPressed;

  BottomButton({@required this.buttonTitle, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargeButtonStyle,
          ),
        ),
        color: KBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}
