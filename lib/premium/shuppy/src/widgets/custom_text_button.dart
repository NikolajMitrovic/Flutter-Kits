import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Color? textColor;

  const CustomTextButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onTap,
      child: Text(
        label,
        style: theme.textTheme.displaySmall?.copyWith(
          color: (textColor == null) ? null : textColor,
        ),
      ),
    );
  }
}
