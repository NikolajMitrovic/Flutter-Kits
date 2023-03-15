part of '../sign_up_page.dart';

class _BuildSignUpButton extends StatelessWidget {
  final VoidCallback? onSignInTap;
  final bool? isLoading;

  const _BuildSignUpButton({Key? key, this.onSignInTap, this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (isLoading == true)
        ? const CustomLoadingIndicator()
        : CustomFadeTransition(
            duration:const Duration(milliseconds: 400),
            child: CustomElevatedButton(
              label: AppLocalizations.of(context)!.sign_up,
              onTap: onSignInTap,
            ),
          );
  }
}
