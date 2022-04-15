import 'package:flutter/cupertino.dart';

class ButtonFrame extends StatelessWidget {
  final double size;
  final IconData icon;
  final Function() handledButton;

  const ButtonFrame({
    Key? key,
    required this.size,
    required this.icon,
    required this.handledButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handledButton(),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: size,
        ),
      ),
    );
  }
}
