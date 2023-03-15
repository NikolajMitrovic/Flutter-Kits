import 'package:flutter/material.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
 

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onTap;
  final String? label;
  final double height;
  final double width;
  final Color color;
  final Color labelColor;

  const CustomElevatedButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.width = double.infinity,
    this.height = 45.0,
    this.color = ColorLight.primary,
    this.labelColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      // Raised Button Deprecated
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor : color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius)
          )
        ),
        child: Text(
          label!,
          style: theme.textTheme.button!.copyWith(color: labelColor),
        ),
      ),
    );
  }
}
