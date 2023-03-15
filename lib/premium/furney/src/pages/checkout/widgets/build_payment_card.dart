part of '../checkout_page.dart';

class _BuildPaymentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final creditCard = CreditCardList.savedCreditCardList.first;
    return Container(
      width: Screens.width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.cardColor,
      ),
      padding: const EdgeInsets.all(Const.margin),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Violet Evergarden',
            style: theme.textTheme.displaySmall,
            maxLines: 1,
          ),
          const SizedBox(height: 5),
          AutoSizeText(
            'violet@example.com',
            style: theme.textTheme.bodyMedium?.copyWith(
              height: 1.2,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: Const.space25),
          Row(
            children: [
              AutoSizeText(AppLocalizations.of(context)!.card_no,
                  style: theme.textTheme.bodyMedium),
              const SizedBox(width: Const.margin),
              AutoSizeText(':', style: theme.textTheme.bodyMedium),
              const Spacer(),
              AutoSizeText(creditCard.noCard.toString(),
                  style: theme.textTheme.headlineMedium),
              const SizedBox(width: Const.margin),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    AutoSizeText(AppLocalizations.of(context)!.exp_date,
                        style: theme.textTheme.bodyMedium),
                    const SizedBox(width: Const.margin),
                    AutoSizeText(':', style: theme.textTheme.bodyMedium),
                    const Spacer(),
                    AutoSizeText(
                        DateFormat('MM/dd').format(creditCard.expDate!),
                        style: theme.textTheme.headlineMedium),
                    const SizedBox(width: Const.margin),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AutoSizeText(
                        AppLocalizations.of(context)!.cvv.toUpperCase(),
                        style: theme.textTheme.bodyMedium),
                    const SizedBox(width: Const.margin),
                    AutoSizeText(':', style: theme.textTheme.bodyMedium),
                    const Spacer(),
                    AutoSizeText(creditCard.cvv.toString(),
                        style: theme.textTheme.headlineMedium),
                    const SizedBox(width: Const.margin),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
