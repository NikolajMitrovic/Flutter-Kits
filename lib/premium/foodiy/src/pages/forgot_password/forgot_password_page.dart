// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/custom_elevated_button.dart';

class FoodiyForgotPasswordScreen extends StatelessWidget { 

  const FoodiyForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor : theme.backgroundColor ,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          color: theme.primaryColor,
          onPressed: backOnTap,
        ),
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.all(Const.margin),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.forgot_your_password,
              style: theme.textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              AppLocalizations.of(context)!.enter_your_registered_email_below_to_receive_password_reset_authentication,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 25),
            Image.asset(Const.email,
              width: MediaQuery.of(context).size.width / 1.5,
            ),
            const SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.email_address,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: theme.disabledColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: theme.disabledColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${AppLocalizations.of(context)!.remember_password}?',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: backOnTap,
                  child: Text(
                    AppLocalizations.of(context)!.log_in,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            CustomElevatedButton(
              onTap: sendVerificationCodeOnTap,
              label: AppLocalizations.of(context)!.send,
            )
          ],
        ),
      ),
    );
  }

  void backOnTap() {
    Get.back<dynamic>();
  }

  void sendVerificationCodeOnTap() {}
}
