part of '../ui_detail_page.dart';

class UIDetailScreen extends StatefulWidget {
  const UIDetailScreen({Key? key}) : super(key: key);

  @override
  State<UIDetailScreen> createState() => _UIDetailScreenState();
}

class _UIDetailScreenState extends State<UIDetailScreen> {
  late UIKitModels _args;
  
  @override
  void initState() {
    super.initState();
    _args = Get.arguments as UIKitModels;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children:  [
            _BuildSwiper(ui: _args),
            _BuildBody(ui: _args),
            _BuildFloatingButton(ui: _args),
            const _BuildAppBar(),
          ],
        ),
      ),
    );
  }
}
