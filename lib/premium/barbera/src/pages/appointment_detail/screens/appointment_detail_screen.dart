part of '../appointment_detail_page.dart';

class BarberaAppointmentDetailScreen extends StatefulWidget {
  const BarberaAppointmentDetailScreen({Key? key}) : super(key: key);

  @override
  State<BarberaAppointmentDetailScreen> createState() =>
      _BarberaAppointmentDetailScreenState();
}

class _BarberaAppointmentDetailScreenState extends State<BarberaAppointmentDetailScreen> {
  late AppointmentModel _appointment;

  @override
  void initState() {
    super.initState();
    _appointment = Get.arguments as AppointmentModel;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.appointment_details,
      ),
      body: ListView(
        children: [
          _BuildBookingDetail(appointment: _appointment),
          _BuildTotalPrice(appointment: _appointment),
          _BuildServiceDetail(appointment: _appointment),
        ],
      ),
    );
  }
}
