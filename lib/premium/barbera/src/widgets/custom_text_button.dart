import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color? fontColor;
  final double? fontSize;

  const CustomTextButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.fontColor,
    this.fontSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onTap,
      child: Text(
        label,
        style: theme.textTheme.bodyLarge?.copyWith(
          color: fontColor,
          fontSize: fontSize
        ),
      ),
    );
  }
}
