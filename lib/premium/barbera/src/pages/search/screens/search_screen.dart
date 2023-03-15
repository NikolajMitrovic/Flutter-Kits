part of '../search_page.dart';

class BarberaSearchScreen extends StatefulWidget {
  const BarberaSearchScreen({Key? key}) : super(key: key);

  @override
  State<BarberaSearchScreen> createState() => _BarberaSearchScreenState();
}

class _BarberaSearchScreenState extends State<BarberaSearchScreen> {
  TextEditingController? _searchController;
  int? _barbershopFound = allBarbershopList.length;
  late List<BarbershopModel> _barbershopList = allBarbershopList;
  @override
  void initState() {
    super.initState();

    _searchController = TextEditingController();
  }

  void searchBarbershop(String query) {
    final result = allBarbershopList.where((barbershop) {
      final titleLower = barbershop.name!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      _barbershopList = result;
      _barbershopFound = _barbershopList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Column(
        children: [
          _HeaderSection(
            productFound: _barbershopFound,
            searchController: _searchController,
            onChanged: searchBarbershop,
            onSearchTap: () {},
            onFilterTap: ()=>Get.toNamed<dynamic>(BarberaRoutes.filter),
          ),
          _BodySection(itemCount: _barbershopList),
        ],
      ),
    );
  }
}
