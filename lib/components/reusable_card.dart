import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPress});
  // Function passed in with onPress as be instance variable.
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;  // declares function with no parameters
  // final Function onPress;       // declares any function - but will give error
  // 'Function?' can't be assigned to the parameter type 'void Function()?
  // void keyword can be included but is not mandatory

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour
        ),
      ),
    );
  }
}
