part of '../sign_in_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: const Center(
              child: Icon(
                Icons.shopping_basket,
                color: Colors.white,
                size: 45,
              ),
            ),
          ),
        ),
        const SizedBox(height: Const.space15),
        Text(
          AppLocalizations.of(context)!.welcome_to_back,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: Const.space12),
        Text(
          AppLocalizations.of(context)!.sign_in_to_continue,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
