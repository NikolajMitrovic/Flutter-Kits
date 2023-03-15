part of '../otp_verification_page.dart';

class BarberaOTPVerificationScreen extends StatefulWidget {
  const BarberaOTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<BarberaOTPVerificationScreen> createState() => _BarberaOTPVerificationScreenState();
}

class _BarberaOTPVerificationScreenState extends State<BarberaOTPVerificationScreen> {
  late TextEditingController _controller;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          SvgPicture.asset(
            Assets.otp,
            height: 200,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.verification_code,
            style: theme.textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .we_have_sent_the_code_verification_to_your_phone_number,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.space25),
            child: PinCodeTextField(
              appContext: context,
              controller: _controller,
              length: 4,
              textStyle: theme.textTheme.displaySmall,
              animationType: AnimationType.fade,
              cursorColor: theme.primaryColor,
              onChanged: (v) {},
              pinTheme: PinTheme(
                activeColor: theme.primaryColor,
                selectedColor: theme.primaryColor,
                inactiveColor: theme.disabledColor,
                shape: PinCodeFieldShape.circle,
              ),
              keyboardType: TextInputType.number,
              onCompleted: (v) {
                setState(() => _isLoading = true);
                Future.delayed(const Duration(seconds: 2), () {
                  setState(() => _isLoading = false);
                  Get.offAllNamed<dynamic>(BarberaRoutes.home);
                });
              },
            ),
          ),
          const SizedBox(height: Const.space15),
          CustomElevatedButton(
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.offAllNamed<dynamic>(BarberaRoutes.home);
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.send,
            labelLoading: AppLocalizations.of(context)!.sending,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.didnt_you_received_any_code,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space5),
          InkWell(
            onTap: () {
              showToast(
                msg: AppLocalizations.of(context)!.resend_a_new_code_on_click,
              );
            },
            child: Text(
              AppLocalizations.of(context)!.resend_a_new_code,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
