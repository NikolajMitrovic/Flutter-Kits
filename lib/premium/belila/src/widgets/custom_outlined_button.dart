import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  final void Function()? onTap;
  final String? label;
  final double height;
  final double width;
  final double labelSize;
  final Color color;
  final Color? labelColor;
  final bool isLoading;
  final Widget? child;

  const CustomOutlinedButton({
    Key? key,
    required this.onTap,
    this.label,
    this.width = double.infinity,
    this.height = 45.0,
    this.labelSize = 14.0,
    this.color = ColorLight.primary,
    this.labelColor,
    this.isLoading = false,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          disabledForegroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side:   BorderSide(color: color,width: 2),
          ),
        ),
        child: (isLoading == true)
            ? Center(
                child: SpinKitRing(
                color: theme.primaryColor,
                lineWidth: 2,
                size: 25,
              ))
            : (child == null)
                ? Text(
                    label??'',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontSize: labelSize,
                      color: labelColor,
                    ),
                  )
                : child!,
      ),
    );
  }
}
