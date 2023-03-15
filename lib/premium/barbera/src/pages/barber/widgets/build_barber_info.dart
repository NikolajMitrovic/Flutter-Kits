part of '../barber_page.dart';



class _BuildBarberInfo extends StatelessWidget {
  const _BuildBarberInfo({
    Key? key,
    required this.args,
  }) : super(key: key);

  final BarberModel args;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        Text(
          args.name ?? '',
          style: theme.textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: Const.space12),
        Text(
          'Senior Barber ${AppLocalizations.of(context)!.at} Gentleman Barbershop',
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: Const.space5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StarScore(
              score: 5,
              star: Star(
                fillColor: Colors.red,
                emptyColor: theme.disabledColor,
                size: 18,
              ),
            ),
            const SizedBox(width: Const.space5),
            Text(
              '(125 ${AppLocalizations.of(context)!.reviews})',
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }
}
