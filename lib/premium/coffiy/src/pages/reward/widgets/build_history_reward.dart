part of '../reward_page.dart';


class _BuildHistoryReward extends StatelessWidget {
  const _BuildHistoryReward({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.history_rewards,
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: Const.space12),
            Expanded(
              child: ListView.builder(
                itemCount: rewardList.length,
                itemBuilder: (context, index) {
                  final reward = rewardList[index];

                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      reward.coffee?.name ?? '',
                      style: theme.textTheme.displaySmall,
                    ),
                    subtitle: Text(
                      DateFormat('dd MMMM | hh:mm').format(reward.dateTime!),
                      style: theme.textTheme.titleSmall,
                    ),
                    trailing: Text(
                      '+ ${reward.point} Pts',
                      style: theme.textTheme.displayLarge,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
