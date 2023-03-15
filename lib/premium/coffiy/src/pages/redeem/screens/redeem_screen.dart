part of '../redeem_page.dart';

class CoffiyReedemScreen extends StatelessWidget {
  const CoffiyReedemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.redeem,
      ),
      body: ListView.builder(
        itemCount: redeemList.length,
        itemBuilder: (context, index) {
          final redeem = redeemList[index];
          return Container(
            margin: const EdgeInsets.fromLTRB(
              Const.margin,
              0,
              Const.margin,
              Const.space25,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Const.radius),
                  child: OctoImage(
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      redeem.coffee?.image ?? '',
                    ),
                  ),
                ),
                const SizedBox(width: Const.space12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        redeem.coffee?.name ?? '',
                        style: theme.textTheme.displaySmall,
                      ),
                      const SizedBox(height: Const.space5),
                      Text(
                        '${AppLocalizations.of(context)!.valid_until} ${DateFormat('dd.mm.yy').format(redeem.valid!)}',
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: Const.space12),
                CustomElevatedButton(
                  onTap: () {
                    showToast(msg: AppLocalizations.of(context)!.redeem_clicked);
                  },
                  width: 100,
                  label: '${redeem.point} pts',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
