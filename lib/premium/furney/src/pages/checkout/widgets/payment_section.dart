part of '../checkout_page.dart';

class _PaymentSection extends StatefulWidget {
  const _PaymentSection({
    Key? key,
  }) : super(key: key);

  @override
  State<_PaymentSection> createState() => __PaymentSectionState();
}

class __PaymentSectionState extends State<_PaymentSection> {
  int? _selectedMethod;
  int? _selectedCard;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = Provider.of<ThemeProvider>(context);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      children: [
        AutoSizeText(
          AppLocalizations.of(context)!.payment_method,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space12),
        Row(
          children: PaymentList.paymentList
              .asMap()
              .entries
              .map((e) => Padding(
                    padding: const EdgeInsets.only(right: Const.space12),
                    child: InkWell(
                      onTap: () {
                        setState(() => _selectedMethod = e.key);
                      },
                      borderRadius: BorderRadius.circular(
                        Const.radius,
                      ),
                      child: Container(
                        width: 130,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: (_selectedMethod == e.key)
                                ? theme.primaryColor
                                : theme.hintColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            Const.radius,
                          ),
                          color: (_selectedMethod == e.key)
                              ? theme.primaryColor
                              : theme.backgroundColor ,
                        ),
                        padding: const EdgeInsets.all(Const.space8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              e.value.icon!,
                              width: 25,
                              height: 25,
                              color: (_selectedMethod == e.key)
                                  ? Colors.white
                                  : (provider.isDarkTheme)
                                      ? ColorDark.fontTitle
                                      : ColorLight.fontTitle,
                            ),
                            AutoSizeText(
                              e.value.name!,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: (_selectedMethod == e.key)
                                    ? Colors.white
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(height: Const.space15),
        _BuildTitlePayment(),
        const SizedBox(height: Const.space12),
        ListView.builder(
          itemCount: CreditCardList.savedCreditCardList.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            final data = CreditCardList.savedCreditCardList[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: Const.space15),
              child: InkWell(
                borderRadius: BorderRadius.circular(Const.radius),
                onTap: () {
                  setState(() {
                    _selectedCard = index;
                  });
                },
                child: Container(
                  width: Screens.width(context),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Const.radius),
                    color: theme.cardColor,
                  ),
                  padding: const EdgeInsets.only(left: Const.margin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(data.fullName!,
                                    style: theme.textTheme.headlineMedium),
                                AutoSizeText(data.email!,
                                    style: theme.textTheme.titleSmall),
                              ],
                            ),
                          ),
                          Radio(
                            value: index,
                            groupValue: _selectedCard,
                            activeColor: theme.primaryColor,
                            onChanged: (v) {
                              setState(() {
                                _selectedCard = index;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AutoSizeText(AppLocalizations.of(context)!.card_no,
                              style: theme.textTheme.bodyMedium),
                          const SizedBox(width: Const.margin),
                          AutoSizeText(':', style: theme.textTheme.bodyMedium),
                          const Spacer(),
                          AutoSizeText(data.noCard.toString(),
                              style: theme.textTheme.headlineMedium),
                          const SizedBox(width: Const.margin),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                AutoSizeText(
                                    AppLocalizations.of(context)!.exp_date,
                                    style: theme.textTheme.bodyMedium),
                                const SizedBox(width: Const.margin),
                                AutoSizeText(':',
                                    style: theme.textTheme.bodyMedium),
                                const Spacer(),
                                AutoSizeText(
                                    DateFormat('MM/dd').format(data.expDate!),
                                    style: theme.textTheme.headlineMedium),
                                const SizedBox(width: Const.margin),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                AutoSizeText(
                                    AppLocalizations.of(context)!
                                        .cvv
                                        .toUpperCase(),
                                    style: theme.textTheme.bodyMedium),
                                const SizedBox(width: Const.margin),
                                AutoSizeText(':',
                                    style: theme.textTheme.bodyMedium),
                                const Spacer(),
                                AutoSizeText(data.cvv.toString(),
                                    style: theme.textTheme.headlineMedium),
                                const SizedBox(width: Const.margin),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

class _BuildTitlePayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          AppLocalizations.of(context)!.saved_cards,
          style: theme.textTheme.displaySmall,
        ),
        InkWell(
          onTap: () => Get.toNamed<dynamic>(FurneyRoutes.addCreditCard),
          highlightColor: theme.hintColor,
          child: AutoSizeText(
            AppLocalizations.of(context)!.new_card.toUpperCase(),
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
