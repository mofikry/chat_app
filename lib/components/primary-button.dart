import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.text,
      this.color = kPrimaryColor,
      required this.press,
      this.padding = const EdgeInsets.all(kDefaultPadding * 0.75)});
  final String text;
  final Color color;
  final VoidCallback press;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      padding: padding,
      minWidth: double.infinity,
      color: color,
      child: Text(text, style: TextStyle(color: Colors.white)),
      onPressed: press,
    );
  }
}
