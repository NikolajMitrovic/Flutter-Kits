import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_bundle/flutima/helpers/colors.dart';
import 'package:ultimate_bundle/freebies/furniture_1/helpers/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? label;
  final void Function()? onTap;
  final double height;
  final double width;
  final double labelSize;
  final Color? color;
  final Color labelColor;
  final Widget? child;

  const CustomElevatedButton({
    Key? key,
    this.label,
    required this.onTap,
    this.width = double.infinity,
    this.height = 45.0,
    this.labelSize = 14.0,
    this.color = PrimaryColorLight.furniture1,
    this.labelColor = Colors.white,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor : color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
        ),
        child: (label != null)
            ? AutoSizeText(
                label!,
                maxLines: 1,
                style: theme.textTheme.button!.copyWith(
                  color: labelColor,
                  fontSize: labelSize,
                ),
              )
            : child,
      ),
    );
  }
}
