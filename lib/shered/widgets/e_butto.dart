import 'package:flutter/material.dart';
import '../theme/colors.dart';

class EButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  const EButton({
    super.key,
    required this.onPressed,
    this.text = 'Button',
    this.textColor = Colors.white,
  });

  @override
  State<EButton> createState() => _EButtonState();
}

class _EButtonState extends State<EButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              textStyle: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 1.2,
                color: widget.textColor,
              ),
            ),
            onPressed: widget.onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(color: widget.textColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
