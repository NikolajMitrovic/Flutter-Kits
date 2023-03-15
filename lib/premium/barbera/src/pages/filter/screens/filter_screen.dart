part of '../filter_page.dart';

class BarberaFilterScreen extends StatefulWidget {
  const BarberaFilterScreen({Key? key}) : super(key: key);

  @override
  State<BarberaFilterScreen> createState() => _BarberaFilterScreenState();
}

class _BarberaFilterScreenState extends State<BarberaFilterScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title:AppLocalizations.of(context)!.filter,
        actions: [
          CustomTextButton(
            onTap: () {
              Get.back<dynamic>();
              showToast(msg: AppLocalizations.of(context)!.filter_applied);
            },
            label: AppLocalizations.of(context)!.done,
            fontSize: 14,
            fontColor: theme.primaryColor,
          )
        ],
      ),
      body: ListView(
        children: const [
          _BuildServiceFilter(),
          SizedBox(height: Const.space12),
          _BuildRatingFilter(),
          SizedBox(height: Const.space25),
          _BuildGenderFilter(),
          SizedBox(height: Const.space12),
          _BuildSortFilter(),
        ],
      ),
    );
  }
}
