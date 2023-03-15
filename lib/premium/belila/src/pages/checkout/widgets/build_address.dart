part of '../checkout_page.dart';

class _BuildAddress extends StatelessWidget {

  const _BuildAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final address = addressList.first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _BuildLabelSection(
          label: AppLocalizations.of(context)!.address,
          trailing: AppLocalizations.of(context)!.change,
          onViewAllTap: () => Get.toNamed<dynamic>(
            BelilaRoutes.address,
            arguments: AddressArgument(isFromCheckout: true),
          ),
        ),
        const SizedBox(height: Const.space8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            // ignore: lines_longer_than_80_chars
            '${address.address} ${address.village} ${address.district} ${address.region}',
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.left,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
