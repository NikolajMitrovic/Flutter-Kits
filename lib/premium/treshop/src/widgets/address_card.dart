import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:ultimate_bundle/premium/treshop/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/treshop/src/models/address_model.dart';
 
class AddressCard extends StatelessWidget {
  const AddressCard({
    Key? key,
    required this.address,
    this.onAddressTap,
    required this.index,
  }) : super(key: key);

  final AddressModel address;
  final VoidCallback? onAddressTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
        padding: const EdgeInsets.only(right: Const.space15),
        child: InkWell(
          onTap: onAddressTap,
          borderRadius: BorderRadius.circular(Const.radius),
          child: Container(
            width: 250,
            padding: const EdgeInsets.all(Const.space12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Const.radius),
              color: (0 == index)
                  ? theme.primaryColor.withOpacity(.5)
                  : theme.cardColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(address.location!,
                    style: theme.textTheme.displaySmall),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        address.fullName!,
                        style: theme.textTheme.bodyMedium,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(width: 5),
                    AutoSizeText(
                      address.phoneNumber.toString(),
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                AutoSizeText(
                  address.address!,
                  style: theme.textTheme.titleSmall,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
