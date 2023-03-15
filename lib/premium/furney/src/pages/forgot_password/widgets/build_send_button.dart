part of '../forgot_password_page.dart';

class _BuildSendButton extends StatelessWidget {
  final VoidCallback? onSendTap;
  final bool? isLoading;

  const _BuildSendButton({
    Key? key,
    this.onSendTap,
    this.isLoading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (isLoading == true)
        ?const CustomLoadingIndicator()
        : CustomFadeTransition(
            duration: const Duration(milliseconds: 400),
            child: CustomElevatedButton(
              label: AppLocalizations.of(context)!.send,
              onTap: onSendTap,
            ),
          );
  }
}
