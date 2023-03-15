part of '../add_credit_card_page.dart';

class _BuildExpDateAndCvv extends StatelessWidget {
  final VoidCallback onSelectDateTap;
  final String expDate;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const _BuildExpDateAndCvv({
    Key? key,
    required this.onSelectDateTap,
    required this.expDate,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          InkWell(
            onTap: onSelectDateTap,
            borderRadius: BorderRadius.circular(Const.textFieldRadius),
            child: Container(
              width: Screens.width(context) / 1.7,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.textFieldRadius),
                border: Border.all(color: theme.disabledColor),
              ),
              padding: const EdgeInsets.only(left: Const.space12),
              alignment: Alignment.centerLeft,
              child: Text(
                (expDate == '')
                    ? AppLocalizations.of(context)!.exp_date
                    : expDate,
                style: (expDate == '')
                    ? theme.textTheme.titleMedium
                    : theme.textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(width: Const.space12),
          Expanded(
            child: CustomTextFormField(
              controller: controller,
              hintText: AppLocalizations.of(context)!.cvv,
              textInputType: TextInputType.number,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
