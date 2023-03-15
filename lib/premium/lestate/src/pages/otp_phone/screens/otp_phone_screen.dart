part of '../otp_phone_page.dart';

class LestateOTPPhoneScreen extends StatefulWidget {
  const LestateOTPPhoneScreen({Key? key}) : super(key: key);

  @override
  State<LestateOTPPhoneScreen> createState() => _LestateOTPPhoneScreenState();
}

class _LestateOTPPhoneScreenState extends State<LestateOTPPhoneScreen> {
  late TextEditingController _otpController;

  @override
  void initState() {
    super.initState();
    _otpController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultPinTheme = PinTheme(
      textStyle: theme.textTheme.displaySmall,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        border: Border.all(color: theme.hintColor),
      ),
    );
    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          Center(
            child: SvgPicture.asset(
              Illustrations.otp,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!
                .enter_the_code_we_sent_via_sms_to_your_registered_phone,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Pinput(
              length: 4,
              controller: _otpController,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: theme.primaryColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: theme.primaryColor),
                ),
              ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              // eachFieldPadding: const EdgeInsets.symmetric(
              //   horizontal: Const.space12,
              // ),
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () => Get.toNamed<dynamic>(LestateRoutes.home),
            label: AppLocalizations.of(context)!.submit,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.i_didnt_receive_the_code,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          CustomTextButton(
            onTap: () {
              showToast(
                msg: AppLocalizations.of(context)!.resend_a_new_code_on_click,
              );
            },
            label: AppLocalizations.of(context)!.resend_a_new_code,
            fontColor: Const.accentColor,
          )
        ],
      ),
    );
  }
}
