part of '../credit_card_page.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({Key? key}) : super(key: key);
  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  int? _selectedCard;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(context,
          title: AppLocalizations.of(context)!.credit_card),
      body: ListView.builder(
        itemCount: CreditCardList.savedCreditCardList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
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
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Const.radius),
                  color: theme.cardColor,
                ),
                padding: const EdgeInsets.fromLTRB(
                  Const.margin,
                  Const.space12,
                  0,
                  Const.space12,
                ),
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
                    const SizedBox(height: Const.space15),
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
      ),
    );
  }
}
