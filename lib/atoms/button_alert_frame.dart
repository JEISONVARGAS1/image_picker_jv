import 'package:flutter/material.dart';

class ButtonAlertFrame extends StatelessWidget {
  final Color color;
  final String text;

  const ButtonAlertFrame({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: Text(text),
      ),
    );
  }
}
