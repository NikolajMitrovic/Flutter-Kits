part of '../sign_up_page.dart';

class _HeaderSection extends StatelessWidget {
  final String? label1;
  final String? label2;
  final Duration? duration1;
  final Duration? duration2;

  const _HeaderSection(
      {Key? key, this.label1, this.label2, this.duration1, this.duration2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          label1!,
          style: theme.textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
      const  SizedBox(height: 15),
        Text(
          label2!,
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
