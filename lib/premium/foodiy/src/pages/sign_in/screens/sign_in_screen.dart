part of '../sign_in_page.dart';

class FoodiySignInWithEmailScreen extends StatefulWidget {
  const FoodiySignInWithEmailScreen({Key? key}) : super(key: key);
  @override
  State<FoodiySignInWithEmailScreen> createState() =>
      _FoodiySignInWithEmailScreenState();
}

class _FoodiySignInWithEmailScreenState
    extends State<FoodiySignInWithEmailScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _BuildBody(
              button: CustomElevatedButton(
                label: AppLocalizations.of(context)!.log_in,
                color: Colors.black,
                onTap: () => Get.offAllNamed<dynamic>(FoodiyRoutes.home),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      AppLocalizations.of(context)!.food_shop,
                      style: theme.textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    AppLocalizations.of(context)!.log_in,
                    style: theme.textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 35,
                    height: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 25),
                  _BuildTextField(
                    obscureText: false,
                    label: AppLocalizations.of(context)!.email_address,
                    icon: FeatherIcons.mail,
                    hintText: AppLocalizations.of(context)!.email_address,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 25),
                  _BuildTextField(
                    obscureText: _obscureText,
                    label: AppLocalizations.of(context)!.password,
                    icon: FeatherIcons.lock,
                    hintText: AppLocalizations.of(context)!.enter_your_password,
                    textInputType: TextInputType.text,
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? FeatherIcons.eyeOff : FeatherIcons.eye,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const _BuildForgotPassword(),
            const SizedBox(height: 20),
            const _BuildRegisterButton(),
            const SizedBox(height: 20),
            const _BuildSocialNetworkSign(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  SizedBox buildMainSection(
    BuildContext context, {
    Widget? child,
    required Widget button,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 480,
      child: Stack(
        children: [
          ClipPath(
            clipper: BottomContainerClipper(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                Const.margin,
                50,
                Const.margin,
                0,
              ),
              color: ColorLight.primary,
              child: child,
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 0,
            child: button,
          ),
        ],
      ),
    );
  }
}
