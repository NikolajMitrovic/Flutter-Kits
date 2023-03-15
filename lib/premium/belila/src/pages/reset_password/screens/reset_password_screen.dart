part of '../reset_password_page.dart';

class BelilaResetPasswordScreen extends StatefulWidget {
  const BelilaResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<BelilaResetPasswordScreen> createState() => _BelilaResetPasswordScreenState();
}

class _BelilaResetPasswordScreenState extends State<BelilaResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: CustomAppBar(context),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.all(Const.margin),
            children: [
              Text(
                AppLocalizations.of(context)!.reset_password,
                style: theme.textTheme.displayLarge,
              ),
              const SizedBox(height: Const.space12),
              Text(
                AppLocalizations.of(context)!
                    .enter_the_email_associated_with_your_and_well_send_an_email_with_verification_code_to_reset_your_password,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: Const.space25),
              Text(
                AppLocalizations.of(context)!.email_address,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: Const.space8),
              CustomTextFormField(
                controller: _emailController,
                labelText: AppLocalizations.of(context)!.email,
                hintText: AppLocalizations.of(context)!.email,
                textFieldType: TextFieldType.email,
              ),
              const SizedBox(height: Const.space25),
              CustomElevatedButton(
                isLoading:_isLoading,
                onTap: ()  {
                  setState(() {
                    _isLoading=true;
                  });
                  Future.delayed(const Duration(seconds: 2),(){
                    setState(() {
                      _isLoading = false;
                    });
                    Get.toNamed<dynamic>(BelilaRoutes.resetPasswordOTP);
                  });
                },
                label: AppLocalizations.of(context)!.send_verification,
              ),
            ],
          ),
        ),
      );
  }
}
