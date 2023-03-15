part of '../summary_page.dart';

class LestateSummaryScreen extends StatefulWidget {
  const LestateSummaryScreen({Key? key}) : super(key: key);

  @override
  State<LestateSummaryScreen> createState() => _LestateSummaryScreenState();
}

class _LestateSummaryScreenState extends State<LestateSummaryScreen> {
  late EstateModel estate = specialEstateList.first;
  late String _selectedCheckIn = DateFormat('dd-MM-yyyy').format(
    DateTime.now(),
  );
  late String _selectedCheckOut = 'Select Check out';

  Future<void> _selectCheckIn(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        _selectedCheckIn = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  Future<void> _selectCheckOut(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        _selectedCheckOut = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.summary,
      ),
      body: ListView(
        children: [
          _BuildEstateListTile(estate: estate),
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Row(
              children: [
                _BuildCheckInOutCard(
                  isCheckIn: true,
                  value: _selectedCheckIn,
                  onTap: () => _selectCheckIn(context),
                ),
                const SizedBox(width: Const.margin),
                _BuildCheckInOutCard(
                  isCheckIn: false,
                  value: _selectedCheckOut,
                  onTap: () => _selectCheckOut(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: Const.space25),
          const _BuildPaymentMethod(),
          const SizedBox(height: Const.space25),
          const _BuildTransactionDetail(),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () => Get.toNamed<dynamic>(LestateRoutes.payment),
            label: AppLocalizations.of(context)!.next,
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
          ),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
