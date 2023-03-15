part of '../profile_detail_page.dart';

class BellcommerceProfileDetailScreen extends StatelessWidget {
  const BellcommerceProfileDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.detail_profile,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.profileEdit,
            ),
            icon: const Icon(FeatherIcons.edit2),
            color: theme.primaryColor,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: Const.space25),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/f3/fd/da/f3fddac6fb31791d076a64824b024429.jpg',
              ),
            ),
            title: Text(
              'Jessica Veranda',
              style: theme.textTheme.headlineMedium,
            ),
            subtitle: Text(
              'veranda@mail.com',
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildListTile(
            icon: FeatherIcons.mail,
            title: AppLocalizations.of(context)!.email_address,
            value: 'jscvrnd19@gmail.com',
          ),
          _BuildListTile(
            icon: FeatherIcons.smartphone,
            title: AppLocalizations.of(context)!.phone_number,
            value: '+62870717071',
          ),
        ],
      ),
    );
  }
}
