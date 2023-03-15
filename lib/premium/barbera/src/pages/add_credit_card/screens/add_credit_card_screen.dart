part of '../add_credit_card_page.dart';

class BarberaAddCreditCardScreen extends StatefulWidget {
  const BarberaAddCreditCardScreen({Key? key}) : super(key: key);

  @override
  State<BarberaAddCreditCardScreen> createState() => _BarberaAddCreditCardScreenState();
}

class _BarberaAddCreditCardScreenState extends State<BarberaAddCreditCardScreen> {
  late TextEditingController _cardHolderNameController;
  late TextEditingController _cardNumberController;
  late TextEditingController _cvvController;
  String _cardNumber = 'xxxx xxxx';
  String _cardHolderName = '';
  String _expiryDate = '';
  String _cvv = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _cardHolderNameController = TextEditingController(text: '');
    _cardNumberController = TextEditingController(text: '');
    _cvvController = TextEditingController(text: '');
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _expiryDate = DateFormat('MM-yy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.add_credit_card,
      ),
      body: ListView(
        children: [
          CreditCard(
            cardNumber: _cardNumber,
            cardExpiry: _expiryDate,
            cardHolderName: _cardHolderName,
            cvv: _cvv,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            cardType: CardType.visa,
            showShadow: true,
          ),
          const SizedBox(height: Const.space25),
          _BuildHolderNameTextField(
            controller: _cardHolderNameController,
            onChanged: (v) {
              setState(() {
                _cardHolderName = v;
              });
            },
          ),
          const SizedBox(height: Const.space12),
          _BuildCardNumberTextField(
            controller: _cardNumberController,
            onChanged: (v) {
              setState(() {
                _cardNumber = v;
              });
            },
          ),
          const SizedBox(height: Const.space12),
          _BuildExpDateAndCvv(
            onSelectDateTap: () => _selectDate(context),
            expDate: _expiryDate,
            controller: _cvvController,
            onChanged: (v) {
              setState(() {
                _cvv = v;
              });
            },
          ),
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: CustomElevatedButton(
                onTap: () {
                  setState(() => _isLoading = true);
                  Future.delayed(const Duration(seconds: 2), () {
                    setState(() => _isLoading = false);
                    Get.back<dynamic>();
                    showToast(
                      msg: AppLocalizations.of(context)!
                          .credit_card_successfully_added,
                    );
                  });
                },
                isLoading: _isLoading,
                label: AppLocalizations.of(context)!.save,
                labelLoading: AppLocalizations.of(context)!.saving),
          ),
        ],
      ),
    );
  }
}
