import 'package:flutter/material.dart';
import 'package:tictok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
    this.text = 'Next',
  });

  final bool disabled;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(vertical: Sizes.size16),
        decoration: BoxDecoration(
          color: disabled
              ? Colors.grey.shade300
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(Sizes.size5),
        ),
        duration: Duration(milliseconds: 300),
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.size16 + Sizes.size2,
          ),
          duration: Duration(milliseconds: 300),
          child: Text(
            textAlign: TextAlign.center,
            text,
          ),
        ),
      ),
    );
  }
}
