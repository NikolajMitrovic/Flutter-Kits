part of '../payment_page.dart';

class ShuppyPaymentScreen extends StatefulWidget {
  const ShuppyPaymentScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyPaymentScreen> createState() => _ShuppyPaymentScreenState();
}

class _ShuppyPaymentScreenState extends State<ShuppyPaymentScreen> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async => _willPopScope(context),
      child: Scaffold(
        appBar: CustomAppBar(context,
            title: AppLocalizations.of(context)!.payment_method,
            leadingOntap: () {
          Dialogs.labelDialog(
            context,
            title: AppLocalizations.of(context)!.are_you_sure_you_want_to_quit,
            primaryButtonLabel: AppLocalizations.of(context)!.yes,
            onPrimaryButtonTap: () {
              Get.offAllNamed<dynamic>(ShuppyRoutes.home);
            },
          );
        }),
        body: Padding(
          padding: const  EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomShakeTransition(
                child: Text(
                  AppLocalizations.of(context)!
                      .please_select_your_payment_method,
                  style: theme.textTheme.titleMedium,
                  textAlign: TextAlign.left,
                ),
              ),
              const  SizedBox(height: Const.space12),
              CustomShakeTransition(
                duration: const  Duration(milliseconds: 1000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: LocalList.paymentMethodList
                      .map((payment) => RadioListTile(
                            value: payment.id,
                            contentPadding: EdgeInsets.zero,
                            activeColor: theme.primaryColor,
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Image.asset(
                                    payment.icon!,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                               const     SizedBox(width: Const.space15),
                                  Text(payment.name!,
                                      style: theme.textTheme.bodyMedium)
                                ],
                              ),
                            ),
                            groupValue: _selectedIndex,
                            onChanged: (dynamic value) {
                              setState(() {
                                _selectedIndex = payment.id;
                              });
                            },
                          ))
                      .toList(),
                ),
              ),
              const  SizedBox(height: Const.space25),
              CustomElevatedButton(
                label: AppLocalizations.of(context)!.confirm,
                onTap: () {
                  if (_selectedIndex == null) {
                    showToast(
                        msg: AppLocalizations.of(context)!.select_your_payment);
                  } else {
                    Get.toNamed<dynamic>(ShuppyRoutes.paymentSuccess);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _willPopScope(BuildContext context) {
    Dialogs.labelDialog(
      context,
      title: AppLocalizations.of(context)!.are_you_sure_you_want_to_quit,
      primaryButtonLabel: AppLocalizations.of(context)!.yes,
      onPrimaryButtonTap: () {
        Get.offAllNamed<dynamic>(ShuppyRoutes.home);
      },
    );
    return Future.value(false);
  }
}
