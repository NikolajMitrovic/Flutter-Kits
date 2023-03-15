part of '../following_page.dart';

class BarberaFollowingScreen extends StatelessWidget {
  const BarberaFollowingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.following,
      ),
      body: ListView.builder(
        itemCount: topBarberList.length,
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
            trailing: CustomElevatedButton(
              onTap: () {},
              label: AppLocalizations.of(context)!.following,
              width: 100,
              height: 30,
            ),
          );
        },
      ),
    );
  }
}
