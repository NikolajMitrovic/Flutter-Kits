part of '../schedule_page.dart';

class BarberaScheduleScreen extends StatefulWidget {
  const BarberaScheduleScreen({Key? key}) : super(key: key);

  @override
  State<BarberaScheduleScreen> createState() => _BarberaScheduleScreenState();
}

class _BarberaScheduleScreenState extends State<BarberaScheduleScreen> {
  late String _dateOfBirth = '';
  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dateOfBirth = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _BuildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: Const.space25),
                _BuildDate(
                  date: _dateOfBirth,
                  onSelectDateTap: () => selectDate(context),
                ),
                const SizedBox(height: Const.space25),
                const _BuildBarber(),
                const SizedBox(height: Const.space25),
                const _BuildSlot(),
                const SizedBox(height: Const.space25),
                CustomElevatedButton(
                  onTap: () {
                    if (_dateOfBirth == '') {
                      showToast(
                        msg: AppLocalizations.of(context)!
                            .please_select_appointment_date,
                      );
                    } else {
                      Get.toNamed<dynamic>(BarberaRoutes.bookingDetail);
                    }
                  },
                  margin: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                  ),
                  label: AppLocalizations.of(context)!.book_now,
                ),
                const SizedBox(height: Const.space25),
              ],
            ),
          )
        ],
      ),
    );
  }
}
