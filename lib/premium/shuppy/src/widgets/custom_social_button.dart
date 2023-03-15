import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final void Function()? onTap;

  final String? label;
  final String? logo;
  final Color? color;
  const CustomSocialButton({
    Key? key,
    this.onTap,
    this.label,
    this.logo,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor : color ?? theme.primaryColor,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo!,
              width: 40,
            ),
            const SizedBox(width: 10),
            Text(
              label!,
              style: theme.textTheme.bodyMedium!.copyWith(
                  color: (color == Colors.white)
                      ? const Color(0xFF212121)
                      : Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
