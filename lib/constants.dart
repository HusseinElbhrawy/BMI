import 'package:flutter/material.dart';

const KBottomContainerHeight = 80.0;
const KActiveCardColor = Color(0xff1D1E33);
const KInactiveCardColor = Color(0xff111328);
const KBottomContainerColor = Color(0xFFEB1555);
const KoverLayColor = Color(0x29BB5069);
const KThumbColor = Color(0xFFEB1555);
const KActiveTrackColor = Colors.white;
const KEnabledThumbRadius = 15.0;
const KOverlayRadius = 30.0;
const KMin = 100.0;
const KMax = 220.0;
const KLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const KNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const KSliderThemeDate = SliderThemeData(
  inactiveTrackColor: Color(0xFF8D8E98),
  activeTrackColor: KActiveTrackColor,
  thumbColor: KThumbColor,
  overlayColor: KoverLayColor,
  thumbShape: RoundSliderThumbShape(
    enabledThumbRadius: KEnabledThumbRadius,
  ),
  overlayShape: RoundSliderOverlayShape(overlayRadius: KOverlayRadius),
);

const KLargeButtonStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);
const KTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50.0,
);

const KResultTextStyle = TextStyle(
  color: Color(0xff24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const KBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
const KBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
