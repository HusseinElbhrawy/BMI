import 'package:bmi_calc/components/icon_content.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:bmi_calc/components/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../calculator_brain.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var _selectedGender;
  int height = 180, weight = 60, age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        _selectedGender = Gender.male;
                      });
                    },
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    colour: _selectedGender == Gender.male
                        ? KActiveCardColor
                        : KInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        _selectedGender = Gender.female;
                      });
                    },
                    cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    colour: _selectedGender == Gender.female
                        ? KActiveCardColor
                        : KInactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: null,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: KLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: KNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: KLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: KSliderThemeDate,
                    child: Slider(
                      value: height.toDouble(),
                      min: KMin,
                      max: KMax,
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: KActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: KLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  weight -= 10;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  weight += 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: KActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: KLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: KNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (age > 0) age--;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  age -= 10;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  age += 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: KActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onPressed: () {
              var calculatorBrain =
                  CalculatorBrain(height: height, weight: weight);
              calculatorBrain.calculateBMI();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    //to send data to second screen.
                    bmiResult: calculatorBrain.calculateBMI(),
                    interPretation: calculatorBrain.getInterPretation(),
                    resultText: calculatorBrain.getResult(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
