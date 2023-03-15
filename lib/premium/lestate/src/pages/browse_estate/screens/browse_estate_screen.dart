part of '../browse_estate_page.dart';

class LestateBrowseEstateScreen extends StatefulWidget {
  const LestateBrowseEstateScreen({Key? key}) : super(key: key);

  @override
  State<LestateBrowseEstateScreen> createState() =>
      _LestateBrowseEstateScreenState();
}

class _LestateBrowseEstateScreenState extends State<LestateBrowseEstateScreen> {
  late TextEditingController _searchController;
  late List<EstateModel> _estateList = specialEstateList;
  String _args = '';

  @override
  void initState() {
    super.initState();
    _args = Get.arguments as String;
    _searchController = TextEditingController(text: _args);
    _initialSearch(_args);
  }

  void _initialSearch(String query) {
    final result = specialEstateList.where((v) {
      final titleLower = v.name!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      _estateList = result;
    });
  }

  void _searchEstate(String query) {
    final result = specialEstateList.where((v) {
      final titleLower = v.name!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      _estateList = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.browse_real_estate,
      ),
      body: Column(
        children: [
          _BuildSearchBox(
            searchController: _searchController,
            onChanged: _searchEstate,
          ),
          const SizedBox(height: Const.space25),
          Expanded(
            child: _estateList.isEmpty
                ? const _BuildEmptyState()
                : ListView.builder(
                    itemCount: _estateList.length,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Const.margin,
                    ),
                    itemBuilder: (context, index) {
                      final estate = _estateList[index];
                      return _EstateCard(estate: estate);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
