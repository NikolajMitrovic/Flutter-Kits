part of '../checkout_page.dart';

class _BuildProductOrderList extends StatelessWidget {
  const _BuildProductOrderList({
    Key? key,
    required CheckoutArgument? args,
  }) : _args = args, super(key: key);

  final CheckoutArgument? _args;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomShakeTransition(
      duration: const  Duration(milliseconds: 1000),
      child: ListView.builder(
          itemCount: _args!.products!.length,
          physics: const  ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final e = _args!.products![index]!;
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 60,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(e.images!.first),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                e.name!,
                style: theme.textTheme.headlineMedium,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
              subtitle: Text(
                  NumberFormat.currency(
                    symbol: 'Rp. ',
                    decimalDigits: 0,
                    locale: 'id-ID',
                  ).format(e.price! * e.quantity),
                  style: theme.textTheme.titleMedium),
              trailing: Text(
                  '${e.quantity} ${AppLocalizations.of(context)!.item}',
                  style: theme.textTheme.titleMedium),
            );
          }),
    );
  }
}
