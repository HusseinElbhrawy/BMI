import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Color(0xff0A0D22),
            statusBarColor: Color(0xff0A0D22),
            systemNavigationBarDividerColor: Color(0xff0A0D22),
          ),
          color: Color(0xff0A0D22),
        ),
        primaryColor: const Color(0xff0A0D22),
        scaffoldBackgroundColor: const Color(0xff0A0D22),
      ),
      home: const SafeArea(child: InputPage()),
    );
  }
}
