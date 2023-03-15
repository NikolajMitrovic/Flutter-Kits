part of '../checkout_page.dart';

class _BuildPromoCodeCard extends StatelessWidget {
  final TextEditingController? controller;

  const _BuildPromoCodeCard({Key? key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.cardColor,
      ),
      padding:const EdgeInsets.all(Const.margin),
      margin:const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  AppLocalizations.of(context)!.promo_code,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 1,
                ),
                CustomTextFormField(
                  controller: controller,
                  borderType: BorderType.underline,
                  hintText: AppLocalizations.of(context)!.enter_promo_code,
                  textFieldType: TextFieldType.alphabet,
                ),
              ],
            ),
          ),
         const SizedBox(width: Const.space12),
          CustomElevatedButton(
            width: 80,
            height: 40,
            onTap: () {},
            label: AppLocalizations.of(context)!.apply,
          )
        ],
      ),
    );
  }
}
