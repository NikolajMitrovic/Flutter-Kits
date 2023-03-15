part of '../credit_card_page.dart';

class FurneyAddCreditCard extends StatefulWidget {
  const FurneyAddCreditCard({Key? key}) : super(key: key);
  @override
  State<FurneyAddCreditCard> createState() => _FurneyAddCreditCardState();
}

class _FurneyAddCreditCardState extends State<FurneyAddCreditCard> {
  TextEditingController? _cardNumberController;
  TextEditingController? _cardHolderNameController;
  TextEditingController? _expDateController;
  TextEditingController? _cvvController;
  DateTime? _expDate;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _cardNumberController = TextEditingController();
    _cardHolderNameController = TextEditingController();

    _expDateController = TextEditingController();
    _cvvController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _cardNumberController?.dispose();
    _cardHolderNameController?.dispose();
    _expDateController?.dispose();
    _cvvController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.new_card,
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          children: [
            const SizedBox(height: Const.space15),
            AutoSizeText(
              AppLocalizations.of(context)!.card_number,
              style: theme.textTheme.bodyMedium,
              maxLines: 1,
            ),
            CustomTextFormField(
              controller: _cardNumberController,
              borderType: BorderType.underline,
              hintText: AppLocalizations.of(context)!.enter_card_number,
              textFieldType: TextFieldType.number,
            ),
            const SizedBox(height: Const.space15),
            AutoSizeText(
              AppLocalizations.of(context)!.card_holder_name,
              style: theme.textTheme.bodyMedium,
              maxLines: 1,
            ),
            CustomTextFormField(
              controller: _cardHolderNameController,
              borderType: BorderType.underline,
              hintText: AppLocalizations.of(context)!.enter_card_holder_name,
            ),
            const SizedBox(height: Const.space15),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        AppLocalizations.of(context)!.exp_date,
                        style: theme.textTheme.bodyMedium,
                        maxLines: 1,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2025),
                          );
                          if (picked != null && picked != _expDate) {
                            _expDateController?.text =
                                DateFormat('MM/dd').format(picked);
                          }
                        },
                        child: CustomTextFormField(
                          enabled: false,
                          controller: _expDateController,
                          borderType: BorderType.underline,
                          hintText:
                              AppLocalizations.of(context)!.enter_exp_date,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: Const.space25),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        AppLocalizations.of(context)!.cvv,
                        style: theme.textTheme.bodyMedium,
                        maxLines: 1,
                      ),
                      CustomTextFormField(
                        controller: _cvvController,
                        borderType: BorderType.underline,
                        hintText: AppLocalizations.of(context)!.enter_cvv,
                        textFieldType: TextFieldType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              onTap: () {
                Get.back<dynamic>();
                showToast(msg: AppLocalizations.of(context)!.credit_card_added);
              },
              label: AppLocalizations.of(context)!.save,
            ),
          ],
        ),
      ),
    );
  }
}
