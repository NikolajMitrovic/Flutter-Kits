part of '../sign_in_page.dart';

class _BuildBody extends StatelessWidget {
  final List<Widget> children;

  const _BuildBody({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned.fill(
      top: 220,
      child: Container(
        padding: const EdgeInsets.all(Const.margin),
        decoration: BoxDecoration(
          color: theme.backgroundColor ,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(Const.radius),
            topLeft: Radius.circular(Const.radius),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
