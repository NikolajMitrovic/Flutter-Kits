part of '../sign_in_page.dart';

class _BuildRegisterButton extends StatelessWidget {
  const _BuildRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.dont_have_an_account,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(width: Const.space8),
        GestureDetector(
          onTap: () {
            Get.toNamed<dynamic>(BellcommerceRoutes.signUp);
          },
          child: Text(
            AppLocalizations.of(context)!.register,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        )
      ],
    );
  }
}
