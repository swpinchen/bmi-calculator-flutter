import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'round_icon_button.dart';

class ButtonContent extends StatelessWidget {
  ButtonContent(
      { required this.label,
        required this.metric,
        required this.onPressPlus,
        required this.onPressMinus }
      );

  final String label;
  final int metric;
  final Function() onPressPlus;
  final Function() onPressMinus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          metric.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: onPressMinus,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: onPressPlus,
            ),
          ],
        )
      ],
    );
  }
}