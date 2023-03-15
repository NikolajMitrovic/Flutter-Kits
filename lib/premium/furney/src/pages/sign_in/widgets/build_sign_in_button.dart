part of '../sign_in_page.dart';

class _BuildSignInButton extends StatelessWidget {
  final VoidCallback? onSignInTap;
  final bool? isLoading;

  const _BuildSignInButton({Key? key, this.onSignInTap, this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (isLoading == true)
        ?const  CustomLoadingIndicator()
        : CustomFadeTransition(
      axis: Axis.vertical,
            duration:const Duration(milliseconds: 800),
            child: CustomElevatedButton(
              label: AppLocalizations.of(context)!.sign_in,
              onTap: onSignInTap,
            ),
          );
  }
}
