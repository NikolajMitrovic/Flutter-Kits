part of '../chat_page.dart';

class _BuildProductListTile extends StatelessWidget {
  const _BuildProductListTile({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
        ),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                chat.product?.image?.first ?? Const.image,
              ),
            ),
          ),
        ),
        title: Text(
          chat.product!.name ?? '',
          style: theme.textTheme.bodyLarge,
          maxLines: 1,
        ),
        subtitle: Text(
            NumberFormat.currency(
              symbol: 'Rp. ',
              decimalDigits: 0,
              locale: 'id-ID',
            ).format(chat.product!.price ?? 0),
            style: theme.textTheme.displaySmall),
      ),
    );
  }
}
