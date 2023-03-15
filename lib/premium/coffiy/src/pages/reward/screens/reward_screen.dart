part of '../reward_page.dart';

class CoffiyRewardScreen extends StatelessWidget {
  const CoffiyRewardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.rewards,
        enableLeading: false,
      ),
      body: Column(
        children: const [
          _BuildLoyaltyCard(),
          SizedBox(height: Const.space15),
          _BuildMyPoint(),
          SizedBox(height: Const.space25),
          _BuildHistoryReward(),
        ],
      ),
    );
  }
}
