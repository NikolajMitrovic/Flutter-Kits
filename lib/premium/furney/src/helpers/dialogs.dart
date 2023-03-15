import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/premium/furney/src/widgets/custom_elevated_button.dart';
import 'package:ultimate_bundle/premium/furney/src/widgets/custom_outlined_button.dart';


class Dialogs {
   static Future labelDialog(
    BuildContext context, {
    bool barrierDismissible = false,
    required String? title,
    required String? primaryButtonLabel,
    String? secondaryButtonLabel,
    required VoidCallback? onPrimaryButtonTap,
    VoidCallback? onSecondaryButtonTap,
  }) {
    final theme = Theme.of(context);

    return showDialog<dynamic>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          backgroundColor : theme.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          content: SizedBox(
            height: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          onTap: (onSecondaryButtonTap == null)
                              ? Get.back
                              : onSecondaryButtonTap,
                          label: (secondaryButtonLabel == null)
                              ? AppLocalizations.of(context)!.back
                              : secondaryButtonLabel,
                        ),
                      ),
                     const SizedBox(width: 15),
                      Expanded(
                        child: CustomElevatedButton(
                          onTap: onPrimaryButtonTap,
                          label: primaryButtonLabel ?? '',
                          color: theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
