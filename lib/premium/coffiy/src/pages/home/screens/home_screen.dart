part of '../home_page.dart';

class CoffiyHomeScreen extends StatelessWidget {
  const CoffiyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          const _BuildAppBar(),
          const SizedBox(height: Const.space25),
          Expanded(
            child: Column(
              children: const [
                _BuildLoyaltyCard(),
                SizedBox(height: Const.space25),
                _BuildScrollableCoffee(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
