part of '../checkout_page.dart';

class BelilaCheckoutScreen extends StatefulWidget {
  const BelilaCheckoutScreen({Key? key}) : super(key: key);

  @override
  State<BelilaCheckoutScreen> createState() => _BelilaCheckoutScreenState();
}

class _BelilaCheckoutScreenState extends State<BelilaCheckoutScreen> {
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController(text: '');
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
            child: ListView(
              children: [
                const _BuildAddress(),
                const SizedBox(height: Const.space15),
                _BuildMessage(
                  messageController: _messageController,
                  onChanged: (v) {},
                ),
                const SizedBox(height: Const.space15),
                const _BuildDelivery(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Const.margin),
            child: CustomElevatedButton(
              onTap: () {
                Get.offAllNamed<dynamic>(BelilaRoutes.home);
              },
              label: AppLocalizations.of(context)!.checkout_now,
              
            ),
          )
        ],
      ),
    );
  }
}
