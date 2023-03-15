part of '../like_page.dart';

class BarberaLikeScreen extends StatelessWidget {
  const BarberaLikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.follower,
      ),
      body: ListView.builder(
        itemCount: bestBarbershopList.length,
        itemBuilder: (context, index) {
          final following = topBarberList[index];

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Const.margin,
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor : theme.disabledColor,
              backgroundImage: CachedNetworkImageProvider(
                following.photo ?? '',
              ),
            ),
            title: Text(
              following.name ?? '',
              maxLines: 1,
              style: theme.textTheme.headlineMedium,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('@alexa121', style: theme.textTheme.titleSmall),
                Text(
                  'Hi, just example',
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
