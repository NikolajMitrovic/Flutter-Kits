part of '../profile_page.dart';

class BellcommerceProfileScreen extends StatelessWidget {
  const BellcommerceProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:const [
           _BuildHeader(),
           SizedBox(height: Const.space25),
          _BuildBody(),
           SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
