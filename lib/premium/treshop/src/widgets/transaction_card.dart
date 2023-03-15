import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:ultimate_bundle/premium/treshop/src/models/transaction_model.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    IconData iconType(TransactionType val) {
      switch (val) {
        case TransactionType.pay:
          return FeatherIcons.upload;
        case TransactionType.topUp:
          return FeatherIcons.download;
        case TransactionType.transfer:
          return FeatherIcons.refreshCcw;
        default:
          return FeatherIcons.gift;
      }
    }

    Color iconColorType(TransactionType val) {
      switch (val) {
        case TransactionType.pay:
          return const Color(0xFFFA1F1F);
        case TransactionType.topUp:
          return const Color(0xFF56E289);
        case TransactionType.transfer:
          return const Color(0xFFFA1F1F);
        default:
          return const Color(0xFFFA1F1F);
      }
    }

    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundColor : iconColorType(transaction.type!).withOpacity(.2),
        child: Icon(
          iconType(transaction.type!),
          color: iconColorType(transaction.type!),
          size: 20,
        ),
      ),
      title: AutoSizeText(
        transaction.title!,
        maxLines: 1,
        style: theme.textTheme.displaySmall,
      ),
      subtitle: AutoSizeText(
        DateFormat('dd MMM, hh:mm').format(transaction.date!),
        style: theme.textTheme.titleSmall,
      ),
      trailing: AutoSizeText(
        NumberFormat.currency(
          symbol: r'$',
          decimalDigits: 0,
        ).format(200),
        style: theme.textTheme.displaySmall,
      ),
    );
  }
}
