part of '../profile_page.dart';

class BelilaProfileScreen extends StatefulWidget {
  const BelilaProfileScreen({Key? key}) : super(key: key);

  @override
  State<BelilaProfileScreen> createState() => _BelilaProfileScreenState();
}

class _BelilaProfileScreenState extends State<BelilaProfileScreen> {
  late final UserModel _user = mockUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, enableLeading: false),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _BuildHeader(
                image: _user.image,
                firstName: _user.firstName,
                lastName: _user.lastName,
                emailAddress: _user.email,
                isVerified: true,
              ),
              const SizedBox(height: Const.space25),
               _BuildOrderStatus(
                totalNotPay: waitingOrderList.length,
                totalPacked: packagingOrderList.length,
                totalOnDelivery: onDeliveryOrderList.length,
              ),
              const SizedBox(height: Const.space25),
              const _BodySection(),
            ],
          ),
        ),
      ),
    );
  }

}
