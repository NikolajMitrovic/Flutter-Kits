part of '../checkout_page.dart';

class FurneyCheckoutScreen extends StatefulWidget {
  const FurneyCheckoutScreen({Key? key}) : super(key: key);
  @override
  State<FurneyCheckoutScreen> createState() => _FurneyCheckoutScreenState();
}

class _FurneyCheckoutScreenState extends State<FurneyCheckoutScreen> {
  int? _currentIndex;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.checkout,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (v) {
                setState(() => _currentIndex = v);
              },
              children: const [
                _AddressSection(),
                _PaymentSection(),
                _ConfirmationSection(),
              ],
            ),
          ),
          if (_currentIndex == 2)
            const SizedBox()
          else
            Padding(
              padding: const EdgeInsets.all(Const.margin),
              child: CustomElevatedButton(
                label: AppLocalizations.of(context)!.ccontinue,
                onTap: () {
                  _pageController?.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInCirc,
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
