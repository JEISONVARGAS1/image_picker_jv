import 'package:flutter/material.dart';
import 'package:image_picker_jv/tokens/screen_size.dart';

class ButtonAlertFrame extends StatelessWidget {
  final Color color;
  final String text;
  final TextStyle? textStyle;

  const ButtonAlertFrame({
    Key? key,
    required this.text,
    required this.color,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenSize.height(context) * 0.03,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        color: color,
        child: InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: ScreenSize.height(context) * 0.03),
            alignment: Alignment.center,
            child: Text(text, style: textStyle),
          ),
        ),
      ),
    );
  }
}
