part of '../reset_password_otp_page.dart';

class BelilaResetPasswordOTPScreen extends StatefulWidget {
  const BelilaResetPasswordOTPScreen({Key? key}) : super(key: key);

  @override
  State<BelilaResetPasswordOTPScreen> createState() =>
      _BelilaResetPasswordOTPScreenState();
}

class _BelilaResetPasswordOTPScreenState
    extends State<BelilaResetPasswordOTPScreen> {
  late TextEditingController _otpController;
  bool _isLoading = false;
  bool _countdown = false;

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
          Text(
            AppLocalizations.of(context)!.verification_code,
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .enter_the_verification_code_we_just_sent_you_on_your_email_address,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Center(
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
          ),
          const SizedBox(height: 50),
          CustomElevatedButton(
            isLoading: _isLoading,
            onTap: () async {
              setState(() {
                _isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  _isLoading = false;
                });
                Get.toNamed<dynamic>(BelilaRoutes.newPassword);
              });
            },
            label: AppLocalizations.of(context)!.done,
          ),
          const SizedBox(height: Const.space25),
          if (_countdown == true)
            Center(
              child: Countdown(
                seconds: 60,
                build: (BuildContext context, double time) => Text(
                  // ignore: lines_longer_than_80_chars
                  '${AppLocalizations.of(context)!.can_send_again_in} ${'${time.toInt()} ${AppLocalizations.of(context)!.seconds}'} ${AppLocalizations.of(context)!.again}',
                  style: theme.textTheme.titleSmall,
                ),
                onFinished: () {
                  setState(() {
                    _countdown = false;
                  });
                },
              ),
            )
          else
            const SizedBox(),
          const SizedBox(height: Const.space15),
          CustomTextButton(
            label: AppLocalizations.of(context)!.send_the_code_again,
            onTap: () {
              setState(() {
                _countdown = true;
              });
            },
            textColor: theme.primaryColor,
          ),
          const SizedBox(height: Const.space8),
          CustomTextButton(
            label: AppLocalizations.of(context)!.change_email_address,
            onTap: Get.back,
            textColor: theme.primaryColor,
          ),
        ],
      ),
    );
  }
}
