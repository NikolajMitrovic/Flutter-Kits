part of '../search_page.dart';

class FurneySearchScreen extends StatefulWidget {
  const FurneySearchScreen({Key? key}) : super(key: key);
  @override
  State<FurneySearchScreen> createState() => _FurneySearchScreenState();
}

class _FurneySearchScreenState extends State<FurneySearchScreen> {
  TextEditingController? _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: 'Search',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          _BuildSearch(
            searchController: _searchController,
            onSearchTap: () {},
          ),
          const SizedBox(height: Const.space15),
          _BuildPopularList()
        ],
      ),
    );
  }
}
