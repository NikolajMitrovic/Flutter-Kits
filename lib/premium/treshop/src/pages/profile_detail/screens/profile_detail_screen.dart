part of '../profile_detail_page.dart';

class TreshopProfileDetailScreen extends StatefulWidget {
  const TreshopProfileDetailScreen({Key? key}) : super(key: key);
  @override
  State<TreshopProfileDetailScreen> createState() => _TreshopProfileDetailScreenState();
}

class _TreshopProfileDetailScreenState extends State<TreshopProfileDetailScreen> {
  static const String _userImage = 'https://i.pinimg.com/564x/fc/30/65/fc30653203c453c33b12d66f6837b6d5.jpg';
  static const String _username = 'dickyrey99';
  static const String _email = 'developer@treshop.com';
  static const String _phoneNumber = '081345071707';
  static const String _address = 'Home 403 Oakland Ave Street, A city, Florida, 32104, United States of America';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context,
          title: AppLocalizations.of(context)!.profile,
          actions: [
            IconButton(
              onPressed: () => Get.toNamed<dynamic>(TreshopRoutes.profileEdit),
              icon: const Icon(FeatherIcons.edit),
              color: theme.primaryColor,
            ),
          ]),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const Align(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: CachedNetworkImageProvider(_userImage),
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildProfileTile(
            label: AppLocalizations.of(context)!.username,
            text: _username,
          ),
          const SizedBox(height: Const.space15),
          _BuildProfileTile(
            label: AppLocalizations.of(context)!.email,
            text: _email,
          ),
          const SizedBox(height: Const.space15),
          _BuildProfileTile(
            label: AppLocalizations.of(context)!.phone_number,
            text: _phoneNumber,
          ),
          const SizedBox(height: Const.space15),
          _BuildProfileTile(
            label: AppLocalizations.of(context)!.primary_address,
            text: _address,
          ),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}

