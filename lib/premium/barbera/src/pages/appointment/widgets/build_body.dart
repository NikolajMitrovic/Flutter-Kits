part of '../appointment_page.dart';

class _BuildBody extends StatelessWidget {
  final List<AppointmentModel> appointmentList;

  const _BuildBody({Key? key, required this.appointmentList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appointmentList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        final data = appointmentList[index];
        return _BuildAppointmentCard(appointment: data);
      },
    );
  }
}
