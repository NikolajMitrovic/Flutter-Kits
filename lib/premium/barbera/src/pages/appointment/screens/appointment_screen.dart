part of '../appointment_page.dart';

class BarberaAppointmentScreen extends StatefulWidget {
  const BarberaAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<BarberaAppointmentScreen> createState() => _BarberaAppointmentScreenState();
}

class _BarberaAppointmentScreenState extends State<BarberaAppointmentScreen> {
  bool _isFromProfile = false;

  @override
  void initState() {
    super.initState();
    if (Get.arguments != null) {
      _isFromProfile = Get.arguments as bool;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.appointment,
          enableLeading: _isFromProfile,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 45,
              width: Screens.width(context),
              margin: const EdgeInsets.symmetric(
                horizontal: Const.margin,
                vertical: Const.space12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.space5),
                border: Border.all(color: theme.primaryColor),
              ),
              child: TabBar(
                labelStyle: theme.textTheme.titleSmall
                    ?.copyWith(color: theme.primaryColor),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(Const.space5),
                  border: Border.all(color: theme.primaryColor),
                  color: theme.primaryColor,
                ),
                labelColor: theme.backgroundColor ,
                unselectedLabelColor: theme.primaryColor,
                tabs: [
                  Tab(text: AppLocalizations.of(context)!.upcoming),
                  Tab(text: AppLocalizations.of(context)!.completed),
                  Tab(text: AppLocalizations.of(context)!.cancelled),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _BuildBody(appointmentList: pendingList),
            _BuildBody(appointmentList: completedList),
            _BuildBody(appointmentList: cancelList),
          ],
        ),
      ),
    );
  }
}
