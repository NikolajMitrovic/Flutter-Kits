part of '../profile_page.dart';

class ShuppyProfileScreen extends StatelessWidget {
  const ShuppyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        context,
        enableLeading: false
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: ListView(
          children: [
            const _HeaderSection(
              fullName: 'Kassandra',
              email: 'byneetdev@gmail.com',
              image:
                  'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg',
            ),
            const SizedBox(height: Const.space25),
            _BodySection(),
          ],
        ),
      ),
    );
  }
}
