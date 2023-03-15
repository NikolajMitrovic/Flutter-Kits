import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onTap;
  final String? label;
  final double height;
  final double width;
  final Color color;
  final Color labelColor;
  final bool isLoading;
  final Widget? child;

  const CustomElevatedButton({
    Key? key,
    required this.onTap,
    this.label,
    this.width = double.infinity,
    this.height = 45.0,
    this.color = ColorLight.primary,
    this.labelColor = Colors.white,
    this.isLoading = false,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: (isLoading == true) ? () {} : onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor : color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: (isLoading == true)
            ? Center(
                child: SpinKitRing(
                color: (color == theme.cardColor)
                    ? theme.primaryColor
                    : Colors.white,
                lineWidth: 2,
                size: 25,
              ))
            : (child == null)
                ? Text(
                    label ?? '',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.button?.copyWith(color: labelColor),
                  )
                : child,
      ),
    );
  }
}
