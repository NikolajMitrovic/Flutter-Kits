part of '../home_page.dart';

class LestateHomeScreen extends StatefulWidget {
  const LestateHomeScreen({Key? key}) : super(key: key);

  @override
  State<LestateHomeScreen> createState() => _LestateHomeScreenState();
}

class _LestateHomeScreenState extends State<LestateHomeScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: Const.space25 * 2),
        const _BuildHeader(),
        const SizedBox(height: Const.space25),
        _BuildSearchBox(
          searchController: _searchController,
        ),
        const SizedBox(height: Const.space25),
        const _BuildCategoryList(),
        const SizedBox(height: Const.space25),
        const _BuildSpecialEstateList(),
        const SizedBox(height: Const.space25),
        const _BuildNewBuildingList(),
      ],
    );
  }
}
