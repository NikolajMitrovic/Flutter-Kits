part of '../booking_detail_page.dart';

class BarberaBookingDetailScreen extends StatefulWidget {
  const BarberaBookingDetailScreen({Key? key}) : super(key: key);

  @override
  State<BarberaBookingDetailScreen> createState() => _BarberaBookingDetailScreenState();
}

class _BarberaBookingDetailScreenState extends State<BarberaBookingDetailScreen> {
  late TextEditingController _couponController;

  bool _isShowingTextField = false;
  bool _isShowingCouponResult = false;
  bool _isCorrect = false;

  @override
  void initState() {
    super.initState();
    _couponController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.booking_details,
        backgroundColor : theme.primaryColor,
        leadingIconColor: Colors.white,
        titleColor: Colors.white,
      ),
      body: ListView(
        children: [
          const _BuildHeader(),
          const SizedBox(height: Const.space25),
          if (_isShowingTextField == true)
            _BuildCouponBooking(
              couponController: _couponController,
              onApplyTap: () {
                if (_couponController.text == 'MAX50') {
                  setState(() {
                    _isShowingCouponResult = true;
                    _isCorrect = true;
                  });
                } else {
                  setState(() {
                    _isShowingCouponResult = true;
                    _isCorrect = false;
                  });
                }
              },
            )
          else
            _BuildApplyButton(
              onApplyTap: () {
                setState(() {
                  _isShowingTextField = true;
                });
              },
            ),
          const SizedBox(height: Const.space15),
          if (_isShowingCouponResult == true)
            _BuildCouponSuccess(
              isCorrect: _isCorrect,
              couponController: _couponController,
            )
          else
            const SizedBox(),
          const SizedBox(height: Const.space25),
          const _BuildServiceList(),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () => Get.toNamed<dynamic>(BarberaRoutes.bookingPayment),
            label: AppLocalizations.of(context)!.next,
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
          ),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
