part of '../sign_up_page.dart';

class _BodySection extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? mobileNumberController;
  final TextEditingController? addressController;
  final bool? obscureText;
  final VoidCallback? onObscureTextTap;

  const _BodySection({
    Key? key,
    this.emailController,
    this.passwordController,
    this.mobileNumberController,
    this.addressController,
    this.obscureText,
    this.onObscureTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShakeTransition(
          duration:const Duration(milliseconds: 900),
          child: AutoSizeText(
            AppLocalizations.of(context)!.email_address,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
     const   SizedBox(height: 5),
        CustomShakeTransition(
          duration:const Duration(milliseconds: 1000),
          child: CustomTextFormField(
            controller: emailController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_email_address,
            textFieldType: TextFieldType.email,
          ),
        ),
      const  SizedBox(height: Const.space15),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1100),
          child: AutoSizeText(
            AppLocalizations.of(context)!.password,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 5),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1200),
          child: CustomTextFormField(
            obscureText: obscureText,
            controller: passwordController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_password,
            textFieldType: TextFieldType.password,
            suffixIcon: IconButton(
              icon: Icon(
                (obscureText == true) ? FeatherIcons.eye : FeatherIcons.eyeOff,
              ),
              onPressed: onObscureTextTap,
            ),
          ),
        ),
        const SizedBox(height: Const.space15),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1300),
          child: AutoSizeText(
            AppLocalizations.of(context)!.mobile_number,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 5),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1400),
          child: CustomTextFormField(
            controller: mobileNumberController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_mobile_number,
            textFieldType: TextFieldType.phoneNumber,
          ),
        ),
        const SizedBox(height: Const.space15),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1500),
          child: AutoSizeText(
            AppLocalizations.of(context)!.address,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 5),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1600),
          child: CustomTextFormField(
            controller: addressController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_address,
          ),
        ),
        const SizedBox(height: Const.space15),
      ],
    );
  }
}
