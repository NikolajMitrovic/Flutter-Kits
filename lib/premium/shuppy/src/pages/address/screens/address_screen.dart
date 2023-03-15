part of '../address_page.dart';

class ShuppyAddressScreen extends StatefulWidget {
  const ShuppyAddressScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyAddressScreen> createState() => _ShuppyAddressScreenState();
}

class _ShuppyAddressScreenState extends State<ShuppyAddressScreen> {
  TextEditingController? _addressController;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController();
  }

  @override
  void dispose() {
    _addressController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(context,
          title: AppLocalizations.of(context)!.change_address,
          actions: [
            CustomTextButton(
                textColor: theme.primaryColor,
                label: AppLocalizations.of(context)!.done,
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Get.back<dynamic>();
                }),
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.change_delivery_address,
              style: theme.textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!
                  .please_enter_your_full_address_correctly,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.address,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.left,
            ),
            CustomTextFormField(
              controller: _addressController,
              hintText: AppLocalizations.of(context)!.destination_address,
              borderType: BorderType.underline,
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}
